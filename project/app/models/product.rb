class Product < ApplicationRecord
  has_many :colors,dependent: :destroy
  has_many :sizes,dependent: :destroy
  has_many :designs,dependent: :destroy

  has_many :cart_items
  has_many :users, :through => :cart_items

  has_many :stars
  def stared?(user)
    !!self.stars.find{|star| star.user_id == user.id}
  end

  mount_uploader :pic, PicUploader
end
