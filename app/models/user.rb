class User < ApplicationRecord
    has_many :transactions
    has_many :transaction_memberships
    has_many :group_memberships
end
