class FixDb < ActiveRecord::Migration[7.2]
  def change
    drop_table :transaction_memberships
    rename_table :transaction_membership, :transaction_memberships
    add_column :transaction_memberships, :amount, :integer

    rename_table :group_membership, :group_memberships
  end
end
