require "application_system_test_case"

class RecitasTest < ApplicationSystemTestCase
  setup do
    @recita = recitas(:one)
  end

  test "visiting the index" do
    visit recitas_url
    assert_selector "h1", text: "Recitas"
  end

  test "creating a Recita" do
    visit recitas_url
    click_on "New Recita"

    fill_in "Descricao", with: @recita.descricao
    fill_in "Nome", with: @recita.nome
    fill_in "Valor", with: @recita.valor
    click_on "Create Recita"

    assert_text "Recita was successfully created"
    click_on "Back"
  end

  test "updating a Recita" do
    visit recitas_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @recita.descricao
    fill_in "Nome", with: @recita.nome
    fill_in "Valor", with: @recita.valor
    click_on "Update Recita"

    assert_text "Recita was successfully updated"
    click_on "Back"
  end

  test "destroying a Recita" do
    visit recitas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recita was successfully destroyed"
  end
end
