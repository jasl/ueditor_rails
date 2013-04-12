module UeditorRails
  module ApplicationHelper
    def swfupload_path
      UeditorRails.enable_cross_domain ?
          UeditorRails::Engine.routes.url_helpers.libs_swf_upload_path :
          asset_path('ueditor/third-party/swfupload/swfupload.swf')
    end

    def swfupload_fp9_path
      UeditorRails.enable_cross_domain ?
          UeditorRails::Engine.routes.url_helpers.libs_swf_upload_fp9_path :
          asset_path('ueditor/third-party/swfupload/swfupload_fp9.swf')
    end

    def swf_imageuploader_path
      UeditorRails.enable_cross_domain ?
          UeditorRails::Engine.routes.url_helpers.libs_swf_image_uploader_path :
          asset_path('ueditor/third-party/imageUploader.swf')
    end

    def fclipboard_ueditor_path
      UeditorRails.enable_cross_domain ?
          UeditorRails::Engine.routes.url_helpers.libs_fclipboard_ueditor_path :
          asset_path('ueditor/third-party/fClipboard_ueditor.swf')
    end
  end
end
