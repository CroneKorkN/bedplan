require 'test_helper'

class FullfillmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fullfillment = fullfillments(:one)
  end

  test "should get index" do
    get fullfillments_url
    assert_response :success
  end

  test "should get new" do
    get new_fullfillment_url
    assert_response :success
  end

  test "should create fullfillment" do
    assert_difference('Fullfillment.count') do
      post fullfillments_url, params: { fullfillment: { bed_id: @fullfillment.bed_id, date: @fullfillment.date, employee_id: @fullfillment.employee_id } }
    end

    assert_redirected_to fullfillment_url(Fullfillment.last)
  end

  test "should show fullfillment" do
    get fullfillment_url(@fullfillment)
    assert_response :success
  end

  test "should get edit" do
    get edit_fullfillment_url(@fullfillment)
    assert_response :success
  end

  test "should update fullfillment" do
    patch fullfillment_url(@fullfillment), params: { fullfillment: { bed_id: @fullfillment.bed_id, date: @fullfillment.date, employee_id: @fullfillment.employee_id } }
    assert_redirected_to fullfillment_url(@fullfillment)
  end

  test "should destroy fullfillment" do
    assert_difference('Fullfillment.count', -1) do
      delete fullfillment_url(@fullfillment)
    end

    assert_redirected_to fullfillments_url
  end
end
