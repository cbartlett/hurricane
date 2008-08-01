require File.dirname(__FILE__) + '/../test_helper'
require 'housing_expenses_controller'

# Re-raise errors caught by the controller.
class HousingExpensesController; def rescue_action(e) raise e end; end

class HousingExpensesControllerTest < Test::Unit::TestCase
  fixtures :housing_expenses

  def setup
    @controller = HousingExpensesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:housing_expenses)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_housing_expense
    old_count = HousingExpense.count
    post :create, :housing_expense => { }
    assert_equal old_count+1, HousingExpense.count
    
    assert_redirected_to housing_expense_path(assigns(:housing_expense))
  end

  def test_should_show_housing_expense
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_housing_expense
    put :update, :id => 1, :housing_expense => { }
    assert_redirected_to housing_expense_path(assigns(:housing_expense))
  end
  
  def test_should_destroy_housing_expense
    old_count = HousingExpense.count
    delete :destroy, :id => 1
    assert_equal old_count-1, HousingExpense.count
    
    assert_redirected_to housing_expenses_path
  end
end
