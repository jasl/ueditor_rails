# encoding: utf-8
require 'active_support/json/encoding'

module UeditorRails
  module Util
    class << self
      ASSET_FORMAT = '*.{coffee,scss,sass,png,jpeg,jpg,gif,js,css,erb,swf,exe}'
      NEED_TO_COMPILE_STYLESHEET_EXT = %w(.scss .sass .coffee .erb)

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

      def precompile_assets
        assets = []

        %w(app vendor).each do |source|
          %w(images javascripts stylesheets).each do |kind|
            Dir[UeditorRails.root_path.join("#{source}/assets/#{kind}/**", ASSET_FORMAT)].each do |path|
              next if File.basename(path)[0] == '_'

              ext = File.extname(path)
              path = path[0..-ext.length-1] if NEED_TO_COMPILE_STYLESHEET_EXT.include? ext

              assets << Pathname.new(path).relative_path_from(UeditorRails.root_path.join("#{source}/assets/#{kind}"))
            end
          end
        end

        assets
      end

    end
  end
end
