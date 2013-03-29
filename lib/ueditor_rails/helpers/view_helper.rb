module UeditorRails
  module Helpers
    module ViewHelper
      extend ActiveSupport::Concern

      def ueditor_text_tag(name, content, options = {})
        element_id = sanitize_to_id(options.delete(:id) || name)
        input_html = { :id => element_id, :name => name, :type => 'text/plain' }

        options['initialFrameWidth'] = options.delete(:width) unless options[:width].blank?
        options['initialFrameHeight'] = options.delete(:height) unless options[:height].blank?

        output_buffer = ActiveSupport::SafeBuffer.new
        output_buffer << content_tag(:script, content.to_s.html_safe, input_html.stringify_keys)
        output_buffer << javascript_tag { Util.js_replace(element_id, options.stringify_keys) }
        output_buffer
      end
    end
  end
end
