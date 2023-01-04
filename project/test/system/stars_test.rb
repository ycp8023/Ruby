require "application_system_test_case"

class StarsTest < ApplicationSystemTestCase
  setup do
    @star = stars(:one)
  end

  test "visiting the index" do
    visit stars_url
    assert_selector "h1", text: "Stars"
  end

  test "should create star" do
    visit stars_url
    click_on "New star"

    fill_in "Product", with: @star.product_id
    fill_in "User", with: @star.user_id
    click_on "Create Star"

    assert_text "Star was successfully created"
    click_on "Back"
  end

  test "should update Star" do
    visit star_url(@star)
    click_on "Edit this star", match: :first

    fill_in "Product", with: @star.product_id
    fill_in "User", with: @star.user_id
    click_on "Update Star"

    assert_text "Star was successfully updated"
    click_on "Back"
  end

  test "should destroy Star" do
    visit star_url(@star)
    click_on "Destroy this star", match: :first

    assert_text "Star was successfully destroyed"
  end
end
