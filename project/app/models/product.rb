class Product < ApplicationRecord
  has_many :colors,dependent: :destroy
  has_many :sizes,dependent: :destroy
  has_many :designs,dependent: :destroy

  has_many :cart_items
  has_many :users, :through => :cart_items
end
