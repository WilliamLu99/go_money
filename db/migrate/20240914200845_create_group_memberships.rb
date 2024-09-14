class CreateGroupMemberships < ActiveRecord::Migration[7.2]
  def change
    create_table :group_memberships do |t|
      t.timestamps
    end
  end
end
