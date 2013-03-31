module UeditorRails
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc "Mount Engine and copy config file to Rails app."

    def copy_config_file
      template "ueditor_config.js.erb", "app/assets/javascripts/ueditor_config.js.erb"
    end

    def mount_engine
      route "mount UeditorRails::Engine => '/ueditor'"
    end
  end
end
