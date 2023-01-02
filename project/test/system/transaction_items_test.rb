require "application_system_test_case"

class TransactionItemsTest < ApplicationSystemTestCase
  setup do
    @transaction_item = transaction_items(:one)
  end

  test "visiting the index" do
    visit transaction_items_url
    assert_selector "h1", text: "Transaction items"
  end

  test "should create transaction item" do
    visit transaction_items_url
    click_on "New transaction item"

    fill_in "Price", with: @transaction_item.price
    fill_in "Product", with: @transaction_item.product_id
    fill_in "Quantity", with: @transaction_item.quantity
    fill_in "Transaction order", with: @transaction_item.transaction_order_id
    click_on "Create Transaction item"

    assert_text "Transaction item was successfully created"
    click_on "Back"
  end

  test "should update Transaction item" do
    visit transaction_item_url(@transaction_item)
    click_on "Edit this transaction item", match: :first

    fill_in "Price", with: @transaction_item.price
    fill_in "Product", with: @transaction_item.product_id
    fill_in "Quantity", with: @transaction_item.quantity
    fill_in "Transaction order", with: @transaction_item.transaction_order_id
    click_on "Update Transaction item"

    assert_text "Transaction item was successfully updated"
    click_on "Back"
  end

  test "should destroy Transaction item" do
    visit transaction_item_url(@transaction_item)
    click_on "Destroy this transaction item", match: :first

    assert_text "Transaction item was successfully destroyed"
  end
end
