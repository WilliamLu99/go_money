class User < ApplicationRecord
    has_many :money_transactions, class_name: "Transaction"
    has_many :transaction_memberships
    has_many :group_memberships
    has_many :groups, through: :group_memberships
end