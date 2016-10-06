require 'test_helper'

class FumonthDutiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fumonth_duty = fumonth_duties(:one)
  end

  test "should get index" do
    get fumonth_duties_url
    assert_response :success
  end

  test "should get new" do
    get new_fumonth_duty_url
    assert_response :success
  end

  test "should create fumonth_duty" do
    assert_difference('FumonthDuty.count') do
      post fumonth_duties_url, params: { fumonth_duty: { count: @fumonth_duty.count, date: @fumonth_duty.date, employee_id: @fumonth_duty.employee_id } }
    end

    assert_redirected_to fumonth_duty_url(FumonthDuty.last)
  end

  test "should show fumonth_duty" do
    get fumonth_duty_url(@fumonth_duty)
    assert_response :success
  end

  test "should get edit" do
    get edit_fumonth_duty_url(@fumonth_duty)
    assert_response :success
  end

  test "should update fumonth_duty" do
    patch fumonth_duty_url(@fumonth_duty), params: { fumonth_duty: { count: @fumonth_duty.count, date: @fumonth_duty.date, employee_id: @fumonth_duty.employee_id } }
    assert_redirected_to fumonth_duty_url(@fumonth_duty)
  end

  test "should destroy fumonth_duty" do
    assert_difference('FumonthDuty.count', -1) do
      delete fumonth_duty_url(@fumonth_duty)
    end

    assert_redirected_to fumonth_duties_url
  end
end
