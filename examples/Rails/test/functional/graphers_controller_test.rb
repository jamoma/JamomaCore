require 'test_helper'

class GraphersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graphers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grapher" do
    assert_difference('Grapher.count') do
      post :create, :grapher => { }
    end

    assert_redirected_to grapher_path(assigns(:grapher))
  end

  test "should show grapher" do
    get :show, :id => graphers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => graphers(:one).to_param
    assert_response :success
  end

  test "should update grapher" do
    put :update, :id => graphers(:one).to_param, :grapher => { }
    assert_redirected_to grapher_path(assigns(:grapher))
  end

  test "should destroy grapher" do
    assert_difference('Grapher.count', -1) do
      delete :destroy, :id => graphers(:one).to_param
    end

    assert_redirected_to graphers_path
  end
end
