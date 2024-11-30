class FixJoinCollections < ActiveRecord::Migration[7.2]
  def change
    add_column :group_memberships, :id, :primary_key
    add_column :transaction_memberships, :id, :primary_key
  end
end
