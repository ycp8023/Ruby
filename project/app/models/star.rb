class Star < ApplicationRecord
  belongs_to :user
  belongs_to :product


  def cured?(user)
    self.user === user
  end
end
