require "application_system_test_case"

class UrlMapsTest < ApplicationSystemTestCase
  setup do
    @url_map = url_maps(:one)
  end

  test "visiting the index" do
    visit url_maps_url
    assert_selector "h1", text: "Url Maps"
  end

  test "creating a Url map" do
    visit url_maps_url
    click_on "New Url Map"

    click_on "Create Url map"

    assert_text "Url map was successfully created"
    click_on "Back"
  end

  test "updating a Url map" do
    visit url_maps_url
    click_on "Edit", match: :first

    click_on "Update Url map"

    assert_text "Url map was successfully updated"
    click_on "Back"
  end

  test "destroying a Url map" do
    visit url_maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Url map was successfully destroyed"
  end
end
