require_dependency "ueditor_rails/application_controller"

module UeditorRails
  class LibsController < ApplicationController
    after_filter :set_expires_at

    def swf_image_uploader
      send_file UeditorRails.ueditor_base_path.join('third-party/imageUploader.swf'),
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

    def fclipboard_ueditor
      send_file UeditorRails.ueditor_base_path.join('third-party/fClipboard_ueditor.swf'),
                :disposition => 'inline', :type => 'application/x-shockwave-flash'
    end

    protected

    def set_expires_at
      response.headers['Expires'] = CGI.rfc1123_date(Time.now + 1.weeks)
    end
  end
end
