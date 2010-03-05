require 'test_helper'

class BasicsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basic" do
    assert_difference('Basic.count') do
      post :create, :basic => { }
    end

    assert_redirected_to basic_path(assigns(:basic))
  end

  test "should show basic" do
    get :show, :id => basics(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => basics(:one).to_param
    assert_response :success
  end

  test "should update basic" do
    put :update, :id => basics(:one).to_param, :basic => { }
    assert_redirected_to basic_path(assigns(:basic))
  end

  test "should destroy basic" do
    assert_difference('Basic.count', -1) do
      delete :destroy, :id => basics(:one).to_param
    end

    assert_redirected_to basics_path
  end
end
