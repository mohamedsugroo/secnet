require 'test_helper'

class SearchablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @searchable = searchables(:one)
  end

  test "should get index" do
    get searchables_url
    assert_response :success
  end

  test "should get new" do
    get new_searchable_url
    assert_response :success
  end

  test "should create searchable" do
    assert_difference('Searchable.count') do
      post searchables_url, params: { searchable: { keyword: @searchable.keyword, location: @searchable.location } }
    end

    assert_redirected_to searchable_url(Searchable.last)
  end

  test "should show searchable" do
    get searchable_url(@searchable)
    assert_response :success
  end

  test "should get edit" do
    get edit_searchable_url(@searchable)
    assert_response :success
  end

  test "should update searchable" do
    patch searchable_url(@searchable), params: { searchable: { keyword: @searchable.keyword, location: @searchable.location } }
    assert_redirected_to searchable_url(@searchable)
  end

  test "should destroy searchable" do
    assert_difference('Searchable.count', -1) do
      delete searchable_url(@searchable)
    end

    assert_redirected_to searchables_url
  end
end
