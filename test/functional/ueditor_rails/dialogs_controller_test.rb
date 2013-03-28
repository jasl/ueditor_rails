require 'test_helper'

module UeditorRails
  class DialogsControllerTest < ActionController::TestCase
    test "should get attachment" do
      get :attachment
      assert_response :success
    end
  
    test "should get image" do
      get :image
      assert_response :success
    end
  
  end
end
