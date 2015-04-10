require 'test_helper'

class QaeodsControllerTest < ActionController::TestCase
  setup do
    @qaeod = qaeods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qaeods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qaeod" do
    assert_difference('Qaeod.count') do
      post :create, qaeod: { eod_id: @qaeod.eod_id }
    end

    assert_redirected_to qaeod_path(assigns(:qaeod))
  end

  test "should show qaeod" do
    get :show, id: @qaeod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qaeod
    assert_response :success
  end

  test "should update qaeod" do
    patch :update, id: @qaeod, qaeod: { eod_id: @qaeod.eod_id }
    assert_redirected_to qaeod_path(assigns(:qaeod))
  end

  test "should destroy qaeod" do
    assert_difference('Qaeod.count', -1) do
      delete :destroy, id: @qaeod
    end

    assert_redirected_to qaeods_path
  end
end
