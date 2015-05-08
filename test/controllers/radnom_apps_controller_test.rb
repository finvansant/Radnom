require 'test_helper'

class RadnomAppsControllerTest < ActionController::TestCase
  setup do
    @radnom_app = radnom_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:radnom_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create radnom_app" do
    assert_difference('RadnomApp.count') do
      post :create, radnom_app: { name: @radnom_app.name }
    end

    assert_redirected_to radnom_app_path(assigns(:radnom_app))
  end

  test "should show radnom_app" do
    get :show, id: @radnom_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @radnom_app
    assert_response :success
  end

  test "should update radnom_app" do
    patch :update, id: @radnom_app, radnom_app: { name: @radnom_app.name }
    assert_redirected_to radnom_app_path(assigns(:radnom_app))
  end

  test "should destroy radnom_app" do
    assert_difference('RadnomApp.count', -1) do
      delete :destroy, id: @radnom_app
    end

    assert_redirected_to radnom_apps_path
  end
end
