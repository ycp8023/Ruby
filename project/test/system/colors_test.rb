require "application_system_test_case"

class ColorsTest < ApplicationSystemTestCase
  setup do
    @color = colors(:one)
  end

  test "visiting the index" do
    visit colors_url
    assert_selector "h1", text: "Colors"
  end

  test "should create color" do
    visit colors_url
    click_on "New color"

    fill_in "Description", with: @color.description
    fill_in "Product", with: @color.product_id
    fill_in "Rgb", with: @color.rgb
    click_on "Create Color"

    assert_text "Color was successfully created"
    click_on "Back"
  end

  test "should update Color" do
    visit color_url(@color)
    click_on "Edit this color", match: :first

    fill_in "Description", with: @color.description
    fill_in "Product", with: @color.product_id
    fill_in "Rgb", with: @color.rgb
    click_on "Update Color"

    assert_text "Color was successfully updated"
    click_on "Back"
  end

  test "should destroy Color" do
    visit color_url(@color)
    click_on "Destroy this color", match: :first

    assert_text "Color was successfully destroyed"
  end
end
