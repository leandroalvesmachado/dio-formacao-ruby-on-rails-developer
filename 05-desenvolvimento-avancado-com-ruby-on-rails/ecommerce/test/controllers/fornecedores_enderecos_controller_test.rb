require "test_helper"

class FornecedoresEnderecosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fornecedores_enderecos = fornecedores_enderecos(:one)
  end

  test "should get index" do
    get fornecedores_enderecos_index_url
    assert_response :success
  end

  test "should get new" do
    get new_fornecedores_enderecos_url
    assert_response :success
  end

  test "should create fornecedores_enderecos" do
    assert_difference("FornecedoresEnderecos.count") do
      post fornecedores_enderecos_index_url, params: { fornecedores_enderecos: { endereco_id: @fornecedores_enderecos.endereco_id, fornecedor_id: @fornecedores_enderecos.fornecedor_id } }
    end

    assert_redirected_to fornecedores_enderecos_url(FornecedoresEnderecos.last)
  end

  test "should show fornecedores_enderecos" do
    get fornecedores_enderecos_url(@fornecedores_enderecos)
    assert_response :success
  end

  test "should get edit" do
    get edit_fornecedores_enderecos_url(@fornecedores_enderecos)
    assert_response :success
  end

  test "should update fornecedores_enderecos" do
    patch fornecedores_enderecos_url(@fornecedores_enderecos), params: { fornecedores_enderecos: { endereco_id: @fornecedores_enderecos.endereco_id, fornecedor_id: @fornecedores_enderecos.fornecedor_id } }
    assert_redirected_to fornecedores_enderecos_url(@fornecedores_enderecos)
  end

  test "should destroy fornecedores_enderecos" do
    assert_difference("FornecedoresEnderecos.count", -1) do
      delete fornecedores_enderecos_url(@fornecedores_enderecos)
    end

    assert_redirected_to fornecedores_enderecos_index_url
  end
end
