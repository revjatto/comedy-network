require "application_system_test_case"

class GigglesTest < ApplicationSystemTestCase
  setup do
    @giggle = giggles(:one)
  end

  test "visiting the index" do
    visit giggles_url
    assert_selector "h1", text: "Giggles"
  end

  test "creating a Giggle" do
    visit giggles_url
    click_on "New Giggle"

    fill_in "Author", with: @giggle.author
    fill_in "Body", with: @giggle.body
    fill_in "Title", with: @giggle.title
    click_on "Create Giggle"

    assert_text "Giggle was successfully created"
    click_on "Back"
  end

  test "updating a Giggle" do
    visit giggles_url
    click_on "Edit", match: :first

    fill_in "Author", with: @giggle.author
    fill_in "Body", with: @giggle.body
    fill_in "Title", with: @giggle.title
    click_on "Update Giggle"

    assert_text "Giggle was successfully updated"
    click_on "Back"
  end

  test "destroying a Giggle" do
    visit giggles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Giggle was successfully destroyed"
  end
end
