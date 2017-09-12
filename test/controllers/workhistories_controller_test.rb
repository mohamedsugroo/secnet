require 'test_helper'

class WorkhistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workhistory = workhistories(:one)
  end

  test "should get index" do
    get workhistories_url
    assert_response :success
  end

  test "should get new" do
    get new_workhistory_url
    assert_response :success
  end

  test "should create workhistory" do
    assert_difference('Workhistory.count') do
      post workhistories_url, params: { workhistory: { company_name: @workhistory.company_name, contractor_id: @workhistory.contractor_id, end_date: @workhistory.end_date, start_date: @workhistory.start_date, user_id: @workhistory.user_id } }
    end

    assert_redirected_to workhistory_url(Workhistory.last)
  end

  test "should show workhistory" do
    get workhistory_url(@workhistory)
    assert_response :success
  end

  test "should get edit" do
    get edit_workhistory_url(@workhistory)
    assert_response :success
  end

  test "should update workhistory" do
    patch workhistory_url(@workhistory), params: { workhistory: { company_name: @workhistory.company_name, contractor_id: @workhistory.contractor_id, end_date: @workhistory.end_date, start_date: @workhistory.start_date, user_id: @workhistory.user_id } }
    assert_redirected_to workhistory_url(@workhistory)
  end

  test "should destroy workhistory" do
    assert_difference('Workhistory.count', -1) do
      delete workhistory_url(@workhistory)
    end

    assert_redirected_to workhistories_url
  end
end
