require "application_system_test_case"

class ClientWorkoutsTest < ApplicationSystemTestCase
  setup do
    @client_workout = client_workouts(:one)
  end

  test "visiting the index" do
    visit client_workouts_url
    assert_selector "h1", text: "Client Workouts"
  end

  test "creating a Client workout" do
    visit client_workouts_url
    click_on "New Client Workout"

    fill_in "Dateofworkout", with: @client_workout.dateofworkout
    fill_in "Duration", with: @client_workout.duration
    fill_in "Paidamount", with: @client_workout.paidamount
    fill_in "Trainer", with: @client_workout.trainer
    click_on "Create Client workout"

    assert_text "Client workout was successfully created"
    click_on "Back"
  end

  test "updating a Client workout" do
    visit client_workouts_url
    click_on "Edit", match: :first

    fill_in "Dateofworkout", with: @client_workout.dateofworkout
    fill_in "Duration", with: @client_workout.duration
    fill_in "Paidamount", with: @client_workout.paidamount
    fill_in "Trainer", with: @client_workout.trainer
    click_on "Update Client workout"

    assert_text "Client workout was successfully updated"
    click_on "Back"
  end

  test "destroying a Client workout" do
    visit client_workouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client workout was successfully destroyed"
  end
end
