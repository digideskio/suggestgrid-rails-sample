class RemoveUseridFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :userid, :string
  end
end
