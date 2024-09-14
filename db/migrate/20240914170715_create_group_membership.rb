class CreateGroupMembership < ActiveRecord::Migration[7.2]
  def change
    create_join_table :user, :group do |t|
      t.timestamps
      t.index :user_id
      t.index :group_id
    end
  end
end
