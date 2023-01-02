json.extract! transaction_item, :id, :transaction_order_id, :product_id, :quantity, :price, :created_at, :updated_at
json.url transaction_item_url(transaction_item, format: :json)
