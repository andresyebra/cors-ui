module Cors
  module Ui
    module CorsConfigReader
      def self.fetch_all_resources
        cors_middleware = Rails.application.config.middleware.detect do |m|
          m.klass == Rack::Cors
        end

        return [] unless cors_middleware

        middleware_instance = cors_middleware.build(Rails.application)
        all_resources_blocks = middleware_instance.instance_variable_get(:@all_resources)

        configs = []

        all_resources_blocks.each do |resources_block|
          # Extract common settings from the allow block
          origins = resources_block.instance_variable_get(:@origins)
          public_resources = resources_block.instance_variable_get(:@public_resources)
          resources_block.instance_variable_get(:@resources).each do |resource|
            # byebug
            configs << {
              origins: process_origins(origins),
              path: resource.instance_variable_get(:@path),
              methods: process_value(resource.instance_variable_get(:@methods)),
              headers: process_value(resource.instance_variable_get(:@headers)),
              expose: process_value(resource.instance_variable_get(:@expose)).present? ? process_value(resource.instance_variable_get(:@expose)) : "None",
              max_age: resource.instance_variable_get(:@max_age),
              credentials: resource.instance_variable_get(:@credentials),
              if_condition: resource.instance_variable_get(:@if_proc).present? ? "Custom Condition" : "None",
              public: public_resources || resource.instance_variable_get(:@public_resource)
            }
          end
        end

        configs
      rescue => e
        Rails.logger.error "Error fetching CORS config: #{e.message}"
        []
      end

      private

      def self.process_value(value)
        case value
        when :any then :any
        when Array then value.map(&:to_s)
        else [value.to_s]
        end
      end

      def self.process_origins(origins)
        case origins
        when Array then origins.map { |o| o.is_a?(Regexp) ? o.inspect : o }
        when String then [origins]
        else [origins.to_s]
        end
      end
    end
  end
end