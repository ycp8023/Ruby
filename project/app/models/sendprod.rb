class Sendprod < ApplicationRecord
  belongs_to :admin
  belongs_to :transaction_order
  validates :admin,uniqueness: {scope: :transaction_order}
end
