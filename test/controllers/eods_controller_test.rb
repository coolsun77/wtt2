require 'test_helper'

class EodsControllerTest < ActionController::TestCase
  setup do
    @eod = eods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eod" do
    assert_difference('Eod.count') do
      post :create, eod: { date: @eod.date, user_id: @eod.user_id }
    end

    assert_redirected_to eod_path(assigns(:eod))
  end

  test "should show eod" do
    get :show, id: @eod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eod
    assert_response :success
  end

  test "should update eod" do
    patch :update, id: @eod, eod: { date: @eod.date, user_id: @eod.user_id }
    assert_redirected_to eod_path(assigns(:eod))
  end

  test "should destroy eod" do
    assert_difference('Eod.count', -1) do
      delete :destroy, id: @eod
    end

    assert_redirected_to eods_path
  end
end
