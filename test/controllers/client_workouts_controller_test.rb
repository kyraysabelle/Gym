require 'test_helper'

class ClientWorkoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_workout = client_workouts(:one)
  end

  test "should get index" do
    get client_workouts_url
    assert_response :success
  end

  test "should get new" do
    get new_client_workout_url
    assert_response :success
  end

  test "should create client_workout" do
    assert_difference('ClientWorkout.count') do
      post client_workouts_url, params: { client_workout: { dateofworkout: @client_workout.dateofworkout, duration: @client_workout.duration, paidamount: @client_workout.paidamount, trainer: @client_workout.trainer } }
    end

    assert_redirected_to client_workout_url(ClientWorkout.last)
  end

  test "should show client_workout" do
    get client_workout_url(@client_workout)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_workout_url(@client_workout)
    assert_response :success
  end

  test "should update client_workout" do
    patch client_workout_url(@client_workout), params: { client_workout: { dateofworkout: @client_workout.dateofworkout, duration: @client_workout.duration, paidamount: @client_workout.paidamount, trainer: @client_workout.trainer } }
    assert_redirected_to client_workout_url(@client_workout)
  end

  test "should destroy client_workout" do
    assert_difference('ClientWorkout.count', -1) do
      delete client_workout_url(@client_workout)
    end

    assert_redirected_to client_workouts_url
  end
end
