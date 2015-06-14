require 'test_helper'

class HumidityReadingsControllerTest < ActionController::TestCase
  setup do
    @humidity_reading = humidity_readings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:humidity_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create humidity_reading" do
    assert_difference('HumidityReading.count') do
      post :create, humidity_reading: { humidity: @humidity_reading.humidity }
    end

    assert_redirected_to humidity_reading_path(assigns(:humidity_reading))
  end

  test "should show humidity_reading" do
    get :show, id: @humidity_reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @humidity_reading
    assert_response :success
  end

  test "should update humidity_reading" do
    patch :update, id: @humidity_reading, humidity_reading: { humidity: @humidity_reading.humidity }
    assert_redirected_to humidity_reading_path(assigns(:humidity_reading))
  end

  test "should destroy humidity_reading" do
    assert_difference('HumidityReading.count', -1) do
      delete :destroy, id: @humidity_reading
    end

    assert_redirected_to humidity_readings_path
  end
end
