class TransactionOrder < ApplicationRecord
  belongs_to :user
  belongs_to :cart_item

  has_one :sendprod,dependent: :destroy
  has_one :accprod,dependent: :destroy
  def sendproded?(admin)
    !!self.sendprod
  end


  def cured?(user)
    self.user === user
  end

  def accproded?(user)
    !!self.accprod
  end
end
