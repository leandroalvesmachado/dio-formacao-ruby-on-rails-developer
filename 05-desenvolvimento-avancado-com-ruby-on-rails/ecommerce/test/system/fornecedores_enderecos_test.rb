require "application_system_test_case"

class FornecedoresEnderecosesTest < ApplicationSystemTestCase
  setup do
    @fornecedores_enderecos = fornecedores_enderecos(:one)
  end

  test "visiting the index" do
    visit fornecedores_enderecos_url
    assert_selector "h1", text: "Fornecedores enderecoses"
  end

  test "should create fornecedores enderecos" do
    visit fornecedores_enderecos_url
    click_on "New fornecedores enderecos"

    fill_in "Endereco", with: @fornecedores_enderecos.endereco_id
    fill_in "Fornecedor", with: @fornecedores_enderecos.fornecedor_id
    click_on "Create Fornecedores enderecos"

    assert_text "Fornecedores enderecos was successfully created"
    click_on "Back"
  end

  test "should update Fornecedores enderecos" do
    visit fornecedores_enderecos_url(@fornecedores_enderecos)
    click_on "Edit this fornecedores enderecos", match: :first

    fill_in "Endereco", with: @fornecedores_enderecos.endereco_id
    fill_in "Fornecedor", with: @fornecedores_enderecos.fornecedor_id
    click_on "Update Fornecedores enderecos"

    assert_text "Fornecedores enderecos was successfully updated"
    click_on "Back"
  end

  test "should destroy Fornecedores enderecos" do
    visit fornecedores_enderecos_url(@fornecedores_enderecos)
    click_on "Destroy this fornecedores enderecos", match: :first

    assert_text "Fornecedores enderecos was successfully destroyed"
  end
end
