require 'test_helper'

class TurkishesControllerTest < ActionController::TestCase
  setup do
    @turkish = turkishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:turkishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create turkish" do
    assert_difference('Turkish.count') do
      post :create, turkish: { description: @turkish.description, title: @turkish.title, type: @turkish.type }
    end

    assert_redirected_to turkish_path(assigns(:turkish))
  end

  test "should show turkish" do
    get :show, id: @turkish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @turkish
    assert_response :success
  end

  test "should update turkish" do
    patch :update, id: @turkish, turkish: { description: @turkish.description, title: @turkish.title, type: @turkish.type }
    assert_redirected_to turkish_path(assigns(:turkish))
  end

  test "should destroy turkish" do
    assert_difference('Turkish.count', -1) do
      delete :destroy, id: @turkish
    end

    assert_redirected_to turkishes_path
  end
end
