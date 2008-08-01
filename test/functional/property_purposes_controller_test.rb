require File.dirname(__FILE__) + '/../test_helper'
require 'property_purposes_controller'

# Re-raise errors caught by the controller.
class PropertyPurposesController; def rescue_action(e) raise e end; end

class PropertyPurposesControllerTest < Test::Unit::TestCase
  fixtures :property_purposes

  def setup
    @controller = PropertyPurposesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:property_purposes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_property_purpose
    old_count = PropertyPurpose.count
    post :create, :property_purpose => { }
    assert_equal old_count+1, PropertyPurpose.count
    
    assert_redirected_to property_purpose_path(assigns(:property_purpose))
  end

  def test_should_show_property_purpose
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_property_purpose
    put :update, :id => 1, :property_purpose => { }
    assert_redirected_to property_purpose_path(assigns(:property_purpose))
  end
  
  def test_should_destroy_property_purpose
    old_count = PropertyPurpose.count
    delete :destroy, :id => 1
    assert_equal old_count-1, PropertyPurpose.count
    
    assert_redirected_to property_purposes_path
  end
end
