UeditorRails::Engine.routes.draw do

  %w(swf_image_uploader swf_upload swf_upload_fp9 fclipboard_ueditor).each do |lib|
    get "libs/#{lib}"
  end

  %w(attachment image wordimage scrawl).each do |dialog|
    get "dialogs/#{dialog}"
  end

end
