require File.dirname(__FILE__) + '/../test_helper'
require 'mortgage_terms_controller'

# Re-raise errors caught by the controller.
class MortgageTermsController; def rescue_action(e) raise e end; end

class MortgageTermsControllerTest < Test::Unit::TestCase
  fixtures :mortgage_terms

  def setup
    @controller = MortgageTermsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:mortgage_terms)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_mortgage_term
    old_count = MortgageTerm.count
    post :create, :mortgage_term => { }
    assert_equal old_count+1, MortgageTerm.count
    
    assert_redirected_to mortgage_term_path(assigns(:mortgage_term))
  end

  def test_should_show_mortgage_term
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_mortgage_term
    put :update, :id => 1, :mortgage_term => { }
    assert_redirected_to mortgage_term_path(assigns(:mortgage_term))
  end
  
  def test_should_destroy_mortgage_term
    old_count = MortgageTerm.count
    delete :destroy, :id => 1
    assert_equal old_count-1, MortgageTerm.count
    
    assert_redirected_to mortgage_terms_path
  end
end
