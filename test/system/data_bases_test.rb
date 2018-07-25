require "application_system_test_case"

class DataBasesTest < ApplicationSystemTestCase
  setup do
    @data_basis = data_bases(:one)
  end

  test "visiting the index" do
    visit data_bases_url
    assert_selector "h1", text: "Data Bases"
  end

  test "creating a Data base" do
    visit data_bases_url
    click_on "New Data Base"

    fill_in "Auteurs", with: @data_basis.auteurs
    fill_in "Categorie", with: @data_basis.categorie
    fill_in "Date Pub", with: @data_basis.date_pub
    fill_in "Description", with: @data_basis.description
    fill_in "Name Article", with: @data_basis.name_article
    click_on "Create Data base"

    assert_text "Data base was successfully created"
    click_on "Back"
  end

  test "updating a Data base" do
    visit data_bases_url
    click_on "Edit", match: :first

    fill_in "Auteurs", with: @data_basis.auteurs
    fill_in "Categorie", with: @data_basis.categorie
    fill_in "Date Pub", with: @data_basis.date_pub
    fill_in "Description", with: @data_basis.description
    fill_in "Name Article", with: @data_basis.name_article
    click_on "Update Data base"

    assert_text "Data base was successfully updated"
    click_on "Back"
  end

  test "destroying a Data base" do
    visit data_bases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data base was successfully destroyed"
  end
end
