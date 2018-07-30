require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: { alineamiento: @character.alineamiento, altura: @character.altura, cabello: @character.cabello, clase: @character.clase, deidad: @character.deidad, edad: @character.edad, history: @character.history, nombre_personaje: @character.nombre_personaje, ojos: @character.ojos, peso: @character.peso, piel: @character.piel, rasgos: @character.rasgos, raza: @character.raza, sexo: @character.sexo, tamaño: @character.tamaño, user_id: @character.user_id }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    patch :update, id: @character, character: { alineamiento: @character.alineamiento, altura: @character.altura, cabello: @character.cabello, clase: @character.clase, deidad: @character.deidad, edad: @character.edad, history: @character.history, nombre_personaje: @character.nombre_personaje, ojos: @character.ojos, peso: @character.peso, piel: @character.piel, rasgos: @character.rasgos, raza: @character.raza, sexo: @character.sexo, tamaño: @character.tamaño, user_id: @character.user_id }
    assert_redirected_to character_path(assigns(:character))
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
