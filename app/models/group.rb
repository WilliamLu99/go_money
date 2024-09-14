class Group < ApplicationRecord
    has_many :group_memberships
    has_many :users, :through => :group_memberships
    has_many :money_transactions, class_name: "Transaction"
end
