require 'test_helper'

class TestappsControllerTest < ActionController::TestCase
  setup do
    @testapp = testapps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testapps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testapp" do
    assert_difference('Testapp.count') do
      post :create, testapp: { birthday: @testapp.birthday, gender: @testapp.gender, name: @testapp.name }
    end

    assert_redirected_to testapp_path(assigns(:testapp))
  end

  test "should show testapp" do
    get :show, id: @testapp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testapp
    assert_response :success
  end

  test "should update testapp" do
    patch :update, id: @testapp, testapp: { birthday: @testapp.birthday, gender: @testapp.gender, name: @testapp.name }
    assert_redirected_to testapp_path(assigns(:testapp))
  end

  test "should destroy testapp" do
    assert_difference('Testapp.count', -1) do
      delete :destroy, id: @testapp
    end

    assert_redirected_to testapps_path
  end
end
