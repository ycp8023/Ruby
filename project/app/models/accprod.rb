class Accprod < ApplicationRecord
  belongs_to :user
  belongs_to :transaction_order
  validates :user,uniqueness: {scope: :transaction_order}
end
