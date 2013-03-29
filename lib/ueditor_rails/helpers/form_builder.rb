module UeditorRails
  module Helpers
    module FormBuilder
      extend ActiveSupport::Concern

      def ueditor_text(method, options = {})
        @template.send('ueditor_text', @object_name, method, objectify_options(options))
      end
    end
  end
end
