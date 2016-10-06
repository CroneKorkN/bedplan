require 'test_helper'

class MonthDutiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @month_duty = month_duties(:one)
  end

  test "should get index" do
    get month_duties_url
    assert_response :success
  end

  test "should get new" do
    get new_month_duty_url
    assert_response :success
  end

  test "should create month_duty" do
    assert_difference('MonthDuty.count') do
      post month_duties_url, params: { month_duty: { count: @month_duty.count, date: @month_duty.date, employee_id: @month_duty.employee_id } }
    end

    assert_redirected_to month_duty_url(MonthDuty.last)
  end

  test "should show month_duty" do
    get month_duty_url(@month_duty)
    assert_response :success
  end

  test "should get edit" do
    get edit_month_duty_url(@month_duty)
    assert_response :success
  end

  test "should update month_duty" do
    patch month_duty_url(@month_duty), params: { month_duty: { count: @month_duty.count, date: @month_duty.date, employee_id: @month_duty.employee_id } }
    assert_redirected_to month_duty_url(@month_duty)
  end

  test "should destroy month_duty" do
    assert_difference('MonthDuty.count', -1) do
      delete month_duty_url(@month_duty)
    end

    assert_redirected_to month_duties_url
  end
end
