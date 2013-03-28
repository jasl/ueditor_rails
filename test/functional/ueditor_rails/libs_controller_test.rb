require 'test_helper'

module UeditorRails
  class LibsControllerTest < ActionController::TestCase
    test "should get swf_image_uploader" do
      get :swf_image_uploader
      assert_response :success
    end
  
    test "should get swf_upload" do
      get :swf_upload
      assert_response :success
    end
  
    test "should get swf_upload_fp9" do
      get :swf_upload_fp9
      assert_response :success
    end
  
  end
end
