require 'test_helper'

class BillingInfosControllerTest < ActionController::TestCase
  setup do
    @billing_info = billing_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billing_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billing_info" do
    assert_difference('BillingInfo.count') do
      post :create, billing_info: { cardtype: @billing_info.cardtype, ccexpdate: @billing_info.ccexpdate, ccnumber: @billing_info.ccnumber, userid: @billing_info.userid }
    end

    assert_redirected_to billing_info_path(assigns(:billing_info))
  end

  test "should show billing_info" do
    get :show, id: @billing_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billing_info
    assert_response :success
  end

  test "should update billing_info" do
    put :update, id: @billing_info, billing_info: { cardtype: @billing_info.cardtype, ccexpdate: @billing_info.ccexpdate, ccnumber: @billing_info.ccnumber, userid: @billing_info.userid }
    assert_redirected_to billing_info_path(assigns(:billing_info))
  end

  test "should destroy billing_info" do
    assert_difference('BillingInfo.count', -1) do
      delete :destroy, id: @billing_info
    end

    assert_redirected_to billing_infos_path
  end
end
