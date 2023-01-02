json.extract! user, :id, :user_name, :password, :user_role, :email, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
