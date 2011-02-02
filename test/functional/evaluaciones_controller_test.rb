require 'test_helper'

class EvaluacionesControllerTest < ActionController::TestCase
  setup do
    @evaluacione = evaluaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluacione" do
    assert_difference('Evaluacione.count') do
      post :create, :evaluacione => @evaluacione.attributes
    end

    assert_redirected_to evaluacione_path(assigns(:evaluacione))
  end

  test "should show evaluacione" do
    get :show, :id => @evaluacione.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @evaluacione.to_param
    assert_response :success
  end

  test "should update evaluacione" do
    put :update, :id => @evaluacione.to_param, :evaluacione => @evaluacione.attributes
    assert_redirected_to evaluacione_path(assigns(:evaluacione))
  end

  test "should destroy evaluacione" do
    assert_difference('Evaluacione.count', -1) do
      delete :destroy, :id => @evaluacione.to_param
    end

    assert_redirected_to evaluaciones_path
  end
end
