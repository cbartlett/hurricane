require File.dirname(__FILE__) + '/../test_helper'
require 'government_monitorings_controller'

# Re-raise errors caught by the controller.
class GovernmentMonitoringsController; def rescue_action(e) raise e end; end

class GovernmentMonitoringsControllerTest < Test::Unit::TestCase
  fixtures :government_monitorings

  def setup
    @controller = GovernmentMonitoringsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:government_monitorings)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_government_monitoring
    old_count = GovernmentMonitoring.count
    post :create, :government_monitoring => { }
    assert_equal old_count+1, GovernmentMonitoring.count
    
    assert_redirected_to government_monitoring_path(assigns(:government_monitoring))
  end

  def test_should_show_government_monitoring
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_government_monitoring
    put :update, :id => 1, :government_monitoring => { }
    assert_redirected_to government_monitoring_path(assigns(:government_monitoring))
  end
  
  def test_should_destroy_government_monitoring
    old_count = GovernmentMonitoring.count
    delete :destroy, :id => 1
    assert_equal old_count-1, GovernmentMonitoring.count
    
    assert_redirected_to government_monitorings_path
  end
end
