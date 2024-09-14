class CreateUserTransactionMembership < ActiveRecord::Migration[7.2]
  def change
    create_join_table :user, :transaction, table_name: :transaction_membership do |t|
      t.index :user_id
      t.index :transaction_id
      t.timestamps
    end
  end
end
