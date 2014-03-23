module Refinery
  module Quotations
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Quotations

      engine_name :refinery_quotations

      initializer "register refinerycms_quotations plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "quotations"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.quotations_admin_quotations_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/quotations/quotation'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Quotations)
      end
    end
  end
end
