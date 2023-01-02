require "test_helper"

class TransactionItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction_item = transaction_items(:one)
  end

  test "should get index" do
    get transaction_items_url
    assert_response :success
  end

  test "should get new" do
    get new_transaction_item_url
    assert_response :success
  end

  test "should create transaction_item" do
    assert_difference("TransactionItem.count") do
      post transaction_items_url, params: { transaction_item: { price: @transaction_item.price, product_id: @transaction_item.product_id, quantity: @transaction_item.quantity, transaction_order_id: @transaction_item.transaction_order_id } }
    end

    assert_redirected_to transaction_item_url(TransactionItem.last)
  end

  test "should show transaction_item" do
    get transaction_item_url(@transaction_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_transaction_item_url(@transaction_item)
    assert_response :success
  end

  test "should update transaction_item" do
    patch transaction_item_url(@transaction_item), params: { transaction_item: { price: @transaction_item.price, product_id: @transaction_item.product_id, quantity: @transaction_item.quantity, transaction_order_id: @transaction_item.transaction_order_id } }
    assert_redirected_to transaction_item_url(@transaction_item)
  end

  test "should destroy transaction_item" do
    assert_difference("TransactionItem.count", -1) do
      delete transaction_item_url(@transaction_item)
    end

    assert_redirected_to transaction_items_url
  end
end
