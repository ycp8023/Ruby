class CartItem < ApplicationRecord
  # 每个加购产品项都对应一个产品和一个用户
  belongs_to :user
  belongs_to :product
end
