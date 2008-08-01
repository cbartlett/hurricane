require File.dirname(__FILE__) + '/../test_helper'
require 'borrowers_controller'

# Re-raise errors caught by the controller.
class BorrowersController; def rescue_action(e) raise e end; end

class BorrowersControllerTest < Test::Unit::TestCase
  fixtures :borrowers

  def setup
    @controller = BorrowersController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:borrowers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_borrower
    old_count = Borrower.count
    post :create, :borrower => { }
    assert_equal old_count+1, Borrower.count
    
    assert_redirected_to borrower_path(assigns(:borrower))
  end

  def test_should_show_borrower
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_borrower
    put :update, :id => 1, :borrower => { }
    assert_redirected_to borrower_path(assigns(:borrower))
  end
  
  def test_should_destroy_borrower
    old_count = Borrower.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Borrower.count
    
    assert_redirected_to borrowers_path
  end
end
