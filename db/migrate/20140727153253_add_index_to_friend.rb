class AddIndexToFriend < ActiveRecord::Migration
  def change
  	add_index :friends,[:person_id,"friend_id"],unique: true
  end
end
