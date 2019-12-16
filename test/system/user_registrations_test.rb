require "application_system_test_case"

class UserRegistrationsTest < ApplicationSystemTestCase
  setup do
    @user_registration = user_registrations(:one)
  end

  test "visiting the index" do
    visit user_registrations_url
    assert_selector "h1", text: "User Registrations"
  end

  test "creating a User registration" do
    visit user_registrations_url
    click_on "New User Registration"

    click_on "Create User registration"

    assert_text "User registration was successfully created"
    click_on "Back"
  end

  test "updating a User registration" do
    visit user_registrations_url
    click_on "Edit", match: :first

    click_on "Update User registration"

    assert_text "User registration was successfully updated"
    click_on "Back"
  end

  test "destroying a User registration" do
    visit user_registrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User registration was successfully destroyed"
  end
end
