require "ueditor_rails/engine"

module UeditorRails
  autoload :Util, 'ueditor_rails/util'

  module Helpers
    autoload :ViewHelper, 'ueditor_rails/helpers/view_helper'
    autoload :FormHelper, 'ueditor_rails/helpers/form_helper'
    autoload :FormBuilder, 'ueditor_rails/helpers/form_builder'
  end

  mattr_accessor :assets
  @@assets = nil

  def self.root_path
    @root_path ||= Pathname.new(File.dirname(File.expand_path('../', __FILE__)))
  end

  def self.assets
    @@assets ||= Util.select_assets("ueditor", "vendor/assets/javascripts") << "ckeditor/init.js"
  end
end
