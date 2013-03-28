require_dependency "ueditor_rails/application_controller"

module UeditorRails
  class LibsController < ApplicationController
    def swf_image_uploader
      send_file UeditorRails.ueditor_base_path.join('dialogs/image/imageUploader.swf'),
                :disposition => 'inline', :type => 'application/x-shockwave-flash'
    end
  
    def swf_upload
      send_file UeditorRails.ueditor_base_path.join('third-party/swfupload/swfupload.swf'),
                :disposition => 'inline', :type => 'application/x-shockwave-flash'
    end
  
    def swf_upload_fp9
      send_file UeditorRails.ueditor_base_path.join('third-party/swfupload/swfupload_fp9.swf'),
                :disposition => 'inline', :type => 'application/x-shockwave-flash'
    end
  end
end
