class CartItem < ApplicationRecord
  belongs_to :user
  belongs_to :product

  has_many :transaction_orders,dependent: :destroy
  has_many :users, :through => :transaction_orders
end
