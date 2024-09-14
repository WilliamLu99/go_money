class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :transaction_memberships
  has_many :involved_users, class_name: "User", through: :transaction_memberships
end
