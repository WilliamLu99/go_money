class ChangeGroupUserTableName < ActiveRecord::Migration[7.2]
  def change
    rename_table :group_user, :group_membership
  end
end
