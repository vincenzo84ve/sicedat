require 'test_helper'

class SeccionesControllerTest < ActionController::TestCase
  setup do
    @seccione = secciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seccione" do
    assert_difference('Seccione.count') do
      post :create, :seccione => @seccione.attributes
    end

    assert_redirected_to seccione_path(assigns(:seccione))
  end

  test "should show seccione" do
    get :show, :id => @seccione.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @seccione.to_param
    assert_response :success
  end

  test "should update seccione" do
    put :update, :id => @seccione.to_param, :seccione => @seccione.attributes
    assert_redirected_to seccione_path(assigns(:seccione))
  end

  test "should destroy seccione" do
    assert_difference('Seccione.count', -1) do
      delete :destroy, :id => @seccione.to_param
    end

    assert_redirected_to secciones_path
  end
end
