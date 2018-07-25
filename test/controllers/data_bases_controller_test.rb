require 'test_helper'

class DataBasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_basis = data_bases(:one)
  end

  test "should get index" do
    get data_bases_url
    assert_response :success
  end

  test "should get new" do
    get new_data_basis_url
    assert_response :success
  end

  test "should create data_basis" do
    assert_difference('DataBase.count') do
      post data_bases_url, params: { data_basis: { auteurs: @data_basis.auteurs, categorie: @data_basis.categorie, date_pub: @data_basis.date_pub, description: @data_basis.description, name_article: @data_basis.name_article } }
    end

    assert_redirected_to data_basis_url(DataBase.last)
  end

  test "should show data_basis" do
    get data_basis_url(@data_basis)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_basis_url(@data_basis)
    assert_response :success
  end

  test "should update data_basis" do
    patch data_basis_url(@data_basis), params: { data_basis: { auteurs: @data_basis.auteurs, categorie: @data_basis.categorie, date_pub: @data_basis.date_pub, description: @data_basis.description, name_article: @data_basis.name_article } }
    assert_redirected_to data_basis_url(@data_basis)
  end

  test "should destroy data_basis" do
    assert_difference('DataBase.count', -1) do
      delete data_basis_url(@data_basis)
    end

    assert_redirected_to data_bases_url
  end
end
