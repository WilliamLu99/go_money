class AddAmountToTransactionMembership < ActiveRecord::Migration[7.2]
  def change
    add_column :transaction_memberships, :amount, :integer
  end
end
