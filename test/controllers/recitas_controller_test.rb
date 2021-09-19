require 'test_helper'

class RecitasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recita = recitas(:one)
  end

  test "should get index" do
    get recitas_url
    assert_response :success
  end

  test "should get new" do
    get new_recita_url
    assert_response :success
  end

  test "should create recita" do
    assert_difference('Recita.count') do
      post recitas_url, params: { recita: { descricao: @recita.descricao, nome: @recita.nome, valor: @recita.valor } }
    end

    assert_redirected_to recita_url(Recita.last)
  end

  test "should show recita" do
    get recita_url(@recita)
    assert_response :success
  end

  test "should get edit" do
    get edit_recita_url(@recita)
    assert_response :success
  end

  test "should update recita" do
    patch recita_url(@recita), params: { recita: { descricao: @recita.descricao, nome: @recita.nome, valor: @recita.valor } }
    assert_redirected_to recita_url(@recita)
  end

  test "should destroy recita" do
    assert_difference('Recita.count', -1) do
      delete recita_url(@recita)
    end

    assert_redirected_to recitas_url
  end
end
