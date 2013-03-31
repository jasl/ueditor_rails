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

      def select_assets(path, relative_path)
        folder = File.join(relative_path, path, '**')
        relative_folder = UeditorRails.root_path.join(relative_path)

        Dir[UeditorRails.root_path.join(folder, '*.{js,css,gif,png,jpg,swf,erb}')].inject([]) do |list, file|
          list << Pathname.new(file).relative_path_from(relative_folder).to_s
          list
        end
      end
    end
  end
end
