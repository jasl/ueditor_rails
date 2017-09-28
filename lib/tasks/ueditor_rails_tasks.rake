# desc "Explaining what the task does"
# task :ueditor_rails do
#   # Task goes here
# end


namespace :ueditor do
  desc "copy ueditor into public folder"
  task :assets do
    puts "copying ueditor into public/assets folder ..."
    dest_path = "#{Rails.root}/public/assets"
    FileUtils.mkdir_p dest_path
    FileUtils.cp_r "#{UeditorRails.root_path}/vendor/assets/javascripts/ueditor/", dest_path
  end
end