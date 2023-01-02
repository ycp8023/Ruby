require "test_helper"

class TransactionOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction_order = transaction_orders(:one)
  end

  test "should get index" do
    get transaction_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_transaction_order_url
    assert_response :success
  end

  test "should create transaction_order" do
    assert_difference("TransactionOrder.count") do
      post transaction_orders_url, params: { transaction_order: { cart_item_id: @transaction_order.cart_item_id, delivery_address: @transaction_order.delivery_address, delivery_name: @transaction_order.delivery_name, delivery_phone: @transaction_order.delivery_phone, delivery_postcode: @transaction_order.delivery_postcode, order_status: @transaction_order.order_status, user_id: @transaction_order.user_id } }
    end

    assert_redirected_to transaction_order_url(TransactionOrder.last)
  end

  test "should show transaction_order" do
    get transaction_order_url(@transaction_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_transaction_order_url(@transaction_order)
    assert_response :success
  end

  test "should update transaction_order" do
    patch transaction_order_url(@transaction_order), params: { transaction_order: { cart_item_id: @transaction_order.cart_item_id, delivery_address: @transaction_order.delivery_address, delivery_name: @transaction_order.delivery_name, delivery_phone: @transaction_order.delivery_phone, delivery_postcode: @transaction_order.delivery_postcode, order_status: @transaction_order.order_status, user_id: @transaction_order.user_id } }
    assert_redirected_to transaction_order_url(@transaction_order)
  end

  test "should destroy transaction_order" do
    assert_difference("TransactionOrder.count", -1) do
      delete transaction_order_url(@transaction_order)
    end

    assert_redirected_to transaction_orders_url
  end
end
