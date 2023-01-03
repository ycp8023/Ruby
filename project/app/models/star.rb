class Star < ApplicationRecord
  belongs_to :user_id
  belongs_to :product_id
  validates :user_id, uniqueness: {scope: :product_id}
end
