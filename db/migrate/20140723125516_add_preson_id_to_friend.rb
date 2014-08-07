class AddPresonIdToFriend < ActiveRecord::Migration
  def change
  	add_column :friends,:share_to, :boolean
  	add_column :friends, :be_shared,:boolean
  end
end
