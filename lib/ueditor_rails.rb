require "ueditor_rails/engine"

module UeditorRails
  autoload :Util, 'ueditor_rails/util'

  module Helpers
    autoload :ViewHelper, 'ueditor_rails/helpers/view_helper'
    autoload :FormHelper, 'ueditor_rails/helpers/form_helper'
    autoload :FormBuilder, 'ueditor_rails/helpers/form_builder'
  end

  mattr_accessor :enable_cross_domain

  class<< self

    def enable_cross_domain
      @@enable_cross_domain ||= false
    end

    def root_path
      @root_path ||= Pathname.new(File.dirname(File.expand_path('../', __FILE__)))
    end

    def assets
      @assets ||= Util.precompile_assets
    end

    def ueditor_base_path
      @ueditor_base_path ||= self.root_path.join('vendor/assets/javascripts/ueditor')
    end
  end
end
