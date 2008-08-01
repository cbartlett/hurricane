require File.dirname(__FILE__) + '/../test_helper'
require 'reo_properties_controller'

# Re-raise errors caught by the controller.
class REOPropertiesController; def rescue_action(e) raise e end; end

class REOPropertiesControllerTest < Test::Unit::TestCase
  fixtures :reo_properties

  def setup
    @controller = REOPropertiesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:reo_properties)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_reo_property
    old_count = REOProperty.count
    post :create, :reo_property => { }
    assert_equal old_count+1, REOProperty.count
    
    assert_redirected_to reo_property_path(assigns(:reo_property))
  end

  def test_should_show_reo_property
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_reo_property
    put :update, :id => 1, :reo_property => { }
    assert_redirected_to reo_property_path(assigns(:reo_property))
  end
  
  def test_should_destroy_reo_property
    old_count = REOProperty.count
    delete :destroy, :id => 1
    assert_equal old_count-1, REOProperty.count
    
    assert_redirected_to reo_properties_path
  end
end
