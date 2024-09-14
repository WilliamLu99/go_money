class CreateTransactionMemberships < ActiveRecord::Migration[7.2]
  def change
    create_table :transaction_memberships do |t|
      t.timestamps
    end
  end
end
