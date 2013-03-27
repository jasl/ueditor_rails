module UeditorRails
  module Helpers
    module FormHelper
      extend ActiveSupport::Concern

      include ActionView::Helpers::TagHelper
      include ActionView::Helpers::JavaScriptHelper

      def ueditor_text(object_name, method, options = {})
        options = (options || {}).stringify_keys
        ue_options = (options.delete('config') || {}).stringify_keys

        instance_tag = ActionView::Base::InstanceTag.new(object_name, method, self, options.delete('object'))
        instance_tag.send(:add_default_name_and_id, options) if options['id'].blank?

        output_buffer = ActiveSupport::SafeBuffer.new
        output_buffer << instance_tag.to_content_tag('script', options.merge('type' => 'text/plain'))
        output_buffer << javascript_tag {Util.js_replace(options['id'], ue_options)}
        output_buffer
      end
    end
  end
end
