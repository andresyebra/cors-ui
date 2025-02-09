module Cors
  module Ui
    class Engine < ::Rails::Engine
      isolate_namespace Cors::Ui

      require "cors/ui/cors_config_reader"
    end
  end
end
