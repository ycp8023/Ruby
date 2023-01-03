class TransactionOrder < ApplicationRecord
  belongs_to :user
  belongs_to :cart_item

  has_one :sendprod,dependent: :destroy
  def sendproded?(admin)
    !!self.sendprod
  end


  def cured?(user)
    self.user === user
  end
end
