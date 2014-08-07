class RemoveFriend < ActiveRecord::Migration
  def change
  	remove_column :friends, :be_shared
  end
end
