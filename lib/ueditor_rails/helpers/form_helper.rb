module UeditorRails
  module Helpers
    module FormHelper
      extend ActiveSupport::Concern

      include ActionView::Helpers::TagHelper
      include ActionView::Helpers::JavaScriptHelper

      def ueditor_text(object_name, method, options = {})
        options = options || {}

        options['initialFrameWidth'] = options.delete(:width) unless options[:width].blank?
        options['initialFrameHeight'] = options.delete(:height) unless options[:height].blank?

        instance_tag = ActionView::Base::InstanceTag.new(object_name, method, self, options.delete('object'))
        instance_tag.send(:add_default_name_and_id, options) if options['id'].blank?

        output_buffer = ActiveSupport::SafeBuffer.new
        output_buffer << instance_tag.to_content_tag(:script, { :type => 'text/plain' })
        output_buffer << javascript_tag {Util.js_replace(options['id'], options.stringify_keys)}
        output_buffer
      end
    end
  end
end
