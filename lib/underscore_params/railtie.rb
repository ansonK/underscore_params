module UnderscoreParams
  class Railtie < Rails::Railtie
    initializer "underscore_params.configure_controller" do |app|
      ActiveSupport.on_load :action_controller do
        ActionDispatch::Request.send :include, ActionDispatch::Http::UnderscoreParams
      end
    end
  end
end