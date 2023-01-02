json.extract! product, :id, :product_name, :retail_price, :favorites, :sales, :description, :image_directory, :gender, :added_time, :created_at, :updated_at
json.url product_url(product, format: :json)
