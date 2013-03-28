UeditorRails::Engine.routes.draw do

  %w(swf_image_uploader swf_upload swf_upload_fp9).each do |lib|
    get "libs/#{lib}"
  end

  %w(attachment image).each do |dialog|
    get "dialogs/#{dialog}"
  end

end
