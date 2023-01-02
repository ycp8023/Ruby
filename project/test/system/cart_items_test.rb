require "application_system_test_case"

class CartItemsTest < ApplicationSystemTestCase
  setup do
    @cart_item = cart_items(:one)
  end

  test "visiting the index" do
    visit cart_items_url
    assert_selector "h1", text: "Cart items"
  end

  test "should create cart item" do
    visit cart_items_url
    click_on "New cart item"

    fill_in "Product", with: @cart_item.product_id
    fill_in "Quantity", with: @cart_item.quantity
    fill_in "User", with: @cart_item.user_id
    click_on "Create Cart item"

    assert_text "Cart item was successfully created"
    click_on "Back"
  end

  test "should update Cart item" do
    visit cart_item_url(@cart_item)
    click_on "Edit this cart item", match: :first

    fill_in "Product", with: @cart_item.product_id
    fill_in "Quantity", with: @cart_item.quantity
    fill_in "User", with: @cart_item.user_id
    click_on "Update Cart item"

    assert_text "Cart item was successfully updated"
    click_on "Back"
  end

  test "should destroy Cart item" do
    visit cart_item_url(@cart_item)
    click_on "Destroy this cart item", match: :first

    assert_text "Cart item was successfully destroyed"
  end
end
