require 'test_helper'

class UserLogsControllerTest < ActionController::TestCase
  setup do
    @user_log = user_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_log" do
    assert_difference('UserLog.count') do
      post :create, user_log: { adminId: @user_log.adminId, billAmount: @user_log.billAmount, paid: @user_log.paid, transactionDate: @user_log.transactionDate, userid: @user_log.userid }
    end

    assert_redirected_to user_log_path(assigns(:user_log))
  end

  test "should show user_log" do
    get :show, id: @user_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_log
    assert_response :success
  end

  test "should update user_log" do
    put :update, id: @user_log, user_log: { adminId: @user_log.adminId, billAmount: @user_log.billAmount, paid: @user_log.paid, transactionDate: @user_log.transactionDate, userid: @user_log.userid }
    assert_redirected_to user_log_path(assigns(:user_log))
  end

  test "should destroy user_log" do
    assert_difference('UserLog.count', -1) do
      delete :destroy, id: @user_log
    end

    assert_redirected_to user_logs_path
  end
end
