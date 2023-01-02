json.extract! transaction_order, :id, :added_time, :deal_sum, :user_id, :delivery_address, :delivery_name, :delivery_phone, :delivery_postcode, :order_status, :created_at, :updated_at
json.url transaction_order_url(transaction_order, format: :json)
