  module Cors
    module Ui
      class DashboardController < ApplicationController
        def index
          @cors_configs = CorsConfigReader.fetch_all_resources
          @last_updated = Time.current
        end
      end
    end
  end
