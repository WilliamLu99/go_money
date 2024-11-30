class Group < ApplicationRecord
    has_many :group_memberships, dependent: :destroy
    has_many :users, :through => :group_memberships, dependent: :destroy
    has_many :money_transactions, class_name: "Transaction", dependent: :destroy
end
