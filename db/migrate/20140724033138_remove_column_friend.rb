class RemoveColumnFriend < ActiveRecord::Migration
  def change
  		remove_column :friends, :to_share
  end
end
