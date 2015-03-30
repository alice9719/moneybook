require 'test_helper'

class FormmsControllerTest < ActionController::TestCase
  setup do
    @formm = formms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formm" do
    assert_difference('Formm.count') do
      post :create, formm: { buyday: @formm.buyday, price: @formm.price, ps: @formm.ps, title: @formm.title }
    end

    assert_redirected_to formm_path(assigns(:formm))
  end

  test "should show formm" do
    get :show, id: @formm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formm
    assert_response :success
  end

  test "should update formm" do
    patch :update, id: @formm, formm: { buyday: @formm.buyday, price: @formm.price, ps: @formm.ps, title: @formm.title }
    assert_redirected_to formm_path(assigns(:formm))
  end

  test "should destroy formm" do
    assert_difference('Formm.count', -1) do
      delete :destroy, id: @formm
    end

    assert_redirected_to formms_path
  end
end
