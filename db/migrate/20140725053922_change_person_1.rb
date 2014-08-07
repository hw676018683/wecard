class ChangePerson1 < ActiveRecord::Migration
  def change
  	remove_column :people, :is_shared
  	add_index :people, :qq, unique: true
  end
end
