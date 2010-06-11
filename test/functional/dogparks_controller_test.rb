require 'test_helper'

class DogparksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dogparks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dogpark" do
    assert_difference('Dogpark.count') do
      post :create, :dogpark => { }
    end

    assert_redirected_to dogpark_path(assigns(:dogpark))
  end

  test "should show dogpark" do
    get :show, :id => dogparks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dogparks(:one).to_param
    assert_response :success
  end

  test "should update dogpark" do
    put :update, :id => dogparks(:one).to_param, :dogpark => { }
    assert_redirected_to dogpark_path(assigns(:dogpark))
  end

  test "should destroy dogpark" do
    assert_difference('Dogpark.count', -1) do
      delete :destroy, :id => dogparks(:one).to_param
    end

    assert_redirected_to dogparks_path
  end
end
