module UeditorRails
  module Helpers
    module ViewHelper
      extend ActiveSupport::Concern

      def ueditor_text_tag(name, content = nil, options = {})
        element_id = sanitize_to_id(options[:id] || name)
        input_html = { :id => element_id }.merge( options.delete(:input_html) || {} )
        ue_config = options.delete(:config)

        output_buffer = ActiveSupport::SafeBuffer.new
        output_buffer << content_tag(:script, content.to_s.html_safe, { 'name' => name, 'type' => 'text/plain' }.merge(input_html))
        output_buffer << javascript_tag { Util.js_replace(element_id, ue_config) }
        output_buffer
      end
    end
  end
end
