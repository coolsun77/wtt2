require 'test_helper'

class LoceodsControllerTest < ActionController::TestCase
  setup do
    @loceod = loceods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loceods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loceod" do
    assert_difference('Loceod.count') do
      post :create, loceod: { eod_id: @loceod.eod_id }
    end

    assert_redirected_to loceod_path(assigns(:loceod))
  end

  test "should show loceod" do
    get :show, id: @loceod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loceod
    assert_response :success
  end

  test "should update loceod" do
    patch :update, id: @loceod, loceod: { eod_id: @loceod.eod_id }
    assert_redirected_to loceod_path(assigns(:loceod))
  end

  test "should destroy loceod" do
    assert_difference('Loceod.count', -1) do
      delete :destroy, id: @loceod
    end

    assert_redirected_to loceods_path
  end
end
