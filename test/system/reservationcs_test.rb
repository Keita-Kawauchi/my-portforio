require "application_system_test_case"

class ReservationcsTest < ApplicationSystemTestCase
  setup do
    @reservationc = reservationcs(:one)
  end

  test "visiting the index" do
    visit reservationcs_url
    assert_selector "h1", text: "Reservationcs"
  end

  test "creating a Reservationc" do
    visit reservationcs_url
    click_on "New Reservationc"

    fill_in "Name", with: @reservationc.name
    fill_in "Start time", with: @reservationc.start_time
    click_on "Create Reservationc"

    assert_text "Reservationc was successfully created"
    click_on "Back"
  end

  test "updating a Reservationc" do
    visit reservationcs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @reservationc.name
    fill_in "Start time", with: @reservationc.start_time
    click_on "Update Reservationc"

    assert_text "Reservationc was successfully updated"
    click_on "Back"
  end

  test "destroying a Reservationc" do
    visit reservationcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reservationc was successfully destroyed"
  end
end
