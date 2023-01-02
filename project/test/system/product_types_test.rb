require "application_system_test_case"

class ProductTypesTest < ApplicationSystemTestCase
  setup do
    @product_type = product_types(:one)
  end

  test "visiting the index" do
    visit product_types_url
    assert_selector "h1", text: "Product types"
  end

  test "should create product type" do
    visit product_types_url
    click_on "New product type"

    fill_in "Product", with: @product_type.product_id
    fill_in "Product type name", with: @product_type.product_type_name
    click_on "Create Product type"

    assert_text "Product type was successfully created"
    click_on "Back"
  end

  test "should update Product type" do
    visit product_type_url(@product_type)
    click_on "Edit this product type", match: :first

    fill_in "Product", with: @product_type.product_id
    fill_in "Product type name", with: @product_type.product_type_name
    click_on "Update Product type"

    assert_text "Product type was successfully updated"
    click_on "Back"
  end

  test "should destroy Product type" do
    visit product_type_url(@product_type)
    click_on "Destroy this product type", match: :first

    assert_text "Product type was successfully destroyed"
  end
end
