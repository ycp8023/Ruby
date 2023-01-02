class CartItem < ApplicationRecord
  belongs_to :user
  belongs_to :product

  has_many :transaction_orders
  has_many :users, :through => :transaction_orders
end
