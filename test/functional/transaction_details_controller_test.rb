require File.dirname(__FILE__) + '/../test_helper'
require 'transaction_details_controller'

# Re-raise errors caught by the controller.
class TransactionDetailsController; def rescue_action(e) raise e end; end

class TransactionDetailsControllerTest < Test::Unit::TestCase
  fixtures :transaction_details

  def setup
    @controller = TransactionDetailsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:transaction_details)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_transaction_detail
    old_count = TransactionDetail.count
    post :create, :transaction_detail => { }
    assert_equal old_count+1, TransactionDetail.count
    
    assert_redirected_to transaction_detail_path(assigns(:transaction_detail))
  end

  def test_should_show_transaction_detail
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_transaction_detail
    put :update, :id => 1, :transaction_detail => { }
    assert_redirected_to transaction_detail_path(assigns(:transaction_detail))
  end
  
  def test_should_destroy_transaction_detail
    old_count = TransactionDetail.count
    delete :destroy, :id => 1
    assert_equal old_count-1, TransactionDetail.count
    
    assert_redirected_to transaction_details_path
  end
end
