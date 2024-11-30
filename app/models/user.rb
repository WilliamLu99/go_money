class User < ApplicationRecord
    has_many :money_transactions, class_name: "Transaction", dependent: :delete_all
    has_many :transaction_memberships, dependent: :delete_all
    has_many :group_memberships, dependent: :delete_all
    has_many :groups, through: :group_memberships, dependent: :delete_all

    has_secure_password

    validates :email, presence: true,  uniqueness: true
end