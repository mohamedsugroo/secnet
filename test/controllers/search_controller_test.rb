require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get jobs_search" do
    get search_jobs_search_url
    assert_response :success
  end

  test "should get contractors_search" do
    get search_contractors_search_url
    assert_response :success
  end

end
