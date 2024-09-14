class TransactionMembership < ApplicationRecord
    belongs_to :user
    belongs_to :money_transactions, class_name: "Transaction", foreign_key: "transaction_id"
end
