class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :transaction_memberships
end
