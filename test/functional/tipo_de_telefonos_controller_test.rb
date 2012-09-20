require 'test_helper'

class TipoDeTelefonosControllerTest < ActionController::TestCase
  setup do
    @tipo_de_telefono = tipo_de_telefonos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_de_telefonos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_de_telefono" do
    assert_difference('TipoDeTelefono.count') do
      post :create, tipo_de_telefono: { nombre: @tipo_de_telefono.nombre }
    end

    assert_redirected_to tipo_de_telefono_path(assigns(:tipo_de_telefono))
  end

  test "should show tipo_de_telefono" do
    get :show, id: @tipo_de_telefono
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_telefono
    assert_response :success
  end

  test "should update tipo_de_telefono" do
    put :update, id: @tipo_de_telefono, tipo_de_telefono: { nombre: @tipo_de_telefono.nombre }
    assert_redirected_to tipo_de_telefono_path(assigns(:tipo_de_telefono))
  end

  test "should destroy tipo_de_telefono" do
    assert_difference('TipoDeTelefono.count', -1) do
      delete :destroy, id: @tipo_de_telefono
    end

    assert_redirected_to tipo_de_telefonos_path
  end
end
