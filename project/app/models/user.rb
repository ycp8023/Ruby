class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cart_items
  has_many :products, :through => :cart_items

  has_many :addcartships
  has_many :products, through: :addcartships

  has_many :stars

  action_store :like, :product, action_class_name: "Like"
end
