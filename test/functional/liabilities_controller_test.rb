require File.dirname(__FILE__) + '/../test_helper'
require 'liabilities_controller'

# Re-raise errors caught by the controller.
class LiabilitiesController; def rescue_action(e) raise e end; end

class LiabilitiesControllerTest < Test::Unit::TestCase
  fixtures :liabilities

  def setup
    @controller = LiabilitiesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:liabilities)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_liability
    old_count = Liability.count
    post :create, :liability => { }
    assert_equal old_count+1, Liability.count
    
    assert_redirected_to liability_path(assigns(:liability))
  end

  def test_should_show_liability
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_liability
    put :update, :id => 1, :liability => { }
    assert_redirected_to liability_path(assigns(:liability))
  end
  
  def test_should_destroy_liability
    old_count = Liability.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Liability.count
    
    assert_redirected_to liabilities_path
  end
end
