# encoding: utf-8
require 'active_support/json/encoding'

module UeditorRails
  module Util
    class << self
      def js_replace(dom_id, options = nil)
        js_options = (options && !options.keys.empty?)? ActiveSupport::JSON.encode(options) : '{}'
        js = <<-JS
          if(window.UEDITOR_FIELDS === undefined) {
            window.UEDITOR_FIELDS = [];
          }
          window.UEDITOR_FIELDS.push({id: '#{dom_id}', opt: #{js_options}})
        JS
        js.html_safe
      end

      def select_assets
        assets = []

        Dir[UeditorRails.root_path.join("vendor/assets/javascripts/**", '*.{coffee,scss,sass,png,jpeg,jpg,gif,js,css,erb}')].each do |path|
          ext = File.extname(path)
          path = path[0..-ext.length-1] if %w(.scss .sass .coffee .erb).include? ext

          assets << Pathname.new(path).relative_path_from(UeditorRails.root_path.join("vendor/assets/javascripts"))
        end

        assets
      end
    end
  end
end
