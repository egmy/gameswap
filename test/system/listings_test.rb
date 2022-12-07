require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase

  test 'can create a listing from home page' do
    visit games_path

    click_on "Sign Up"
    fill_in "Username", with: "John11"
    fill_in "Email", with: "John11@email.com"
    fill_in "Password", with: "123123"
    fill_in "Password confirmation", with: "123123"

    click_button value: "Sign up"

    assert_text "Welcome! You have signed up successfully."

    click_on "Destiny"

    assert_text "Save the light"

    click_on "Create New Listing"
    
    fill_in "Description", with: "Works fine, no scratches"
    
    click_on "Create Listing"

    assert_text "Listing saved successfully"

  end
end
