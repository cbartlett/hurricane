require File.dirname(__FILE__) + '/../test_helper'
require 'declarations_controller'

# Re-raise errors caught by the controller.
class DeclarationsController; def rescue_action(e) raise e end; end

class DeclarationsControllerTest < Test::Unit::TestCase
  fixtures :declarations

  def setup
    @controller = DeclarationsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:declarations)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_declaration
    old_count = Declaration.count
    post :create, :declaration => { }
    assert_equal old_count+1, Declaration.count
    
    assert_redirected_to declaration_path(assigns(:declaration))
  end

  def test_should_show_declaration
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_declaration
    put :update, :id => 1, :declaration => { }
    assert_redirected_to declaration_path(assigns(:declaration))
  end
  
  def test_should_destroy_declaration
    old_count = Declaration.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Declaration.count
    
    assert_redirected_to declarations_path
  end
end
