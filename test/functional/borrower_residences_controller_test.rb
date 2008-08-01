require File.dirname(__FILE__) + '/../test_helper'
require 'borrower_residences_controller'

# Re-raise errors caught by the controller.
class BorrowerResidencesController; def rescue_action(e) raise e end; end

class BorrowerResidencesControllerTest < Test::Unit::TestCase
  fixtures :borrower_residences

  def setup
    @controller = BorrowerResidencesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:borrower_residences)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_borrower_residence
    old_count = BorrowerResidence.count
    post :create, :borrower_residence => { }
    assert_equal old_count+1, BorrowerResidence.count
    
    assert_redirected_to borrower_residence_path(assigns(:borrower_residence))
  end

  def test_should_show_borrower_residence
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_borrower_residence
    put :update, :id => 1, :borrower_residence => { }
    assert_redirected_to borrower_residence_path(assigns(:borrower_residence))
  end
  
  def test_should_destroy_borrower_residence
    old_count = BorrowerResidence.count
    delete :destroy, :id => 1
    assert_equal old_count-1, BorrowerResidence.count
    
    assert_redirected_to borrower_residences_path
  end
end
