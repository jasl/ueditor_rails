module UeditorRails
  class Engine < ::Rails::Engine
    isolate_namespace UeditorRails

    initializer "ueditor_rails.assets_precompile", :group => :all do |app|
      app.config.assets.precompile += UeditorRails.assets
    end

    initializer "ueditor_rails.helpers" do
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, UeditorRails::Helpers::ViewHelper
        ActionView::Base.send :include, UeditorRails::Helpers::FormHelper
        ActionView::Helpers::FormBuilder.send :include, UeditorRails::Helpers::FormBuilder
      end
    end
  end
end
