require File.dirname(__FILE__) + '/../test_helper'
require 'incomes_controller'

# Re-raise errors caught by the controller.
class IncomesController; def rescue_action(e) raise e end; end

class IncomesControllerTest < Test::Unit::TestCase
  fixtures :incomes

  def setup
    @controller = IncomesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:incomes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_income
    old_count = Income.count
    post :create, :income => { }
    assert_equal old_count+1, Income.count
    
    assert_redirected_to income_path(assigns(:income))
  end

  def test_should_show_income
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_income
    put :update, :id => 1, :income => { }
    assert_redirected_to income_path(assigns(:income))
  end
  
  def test_should_destroy_income
    old_count = Income.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Income.count
    
    assert_redirected_to incomes_path
  end
end
