class RemoveNumberPerson < ActiveRecord::Migration
 

  def change 
  	add_column :people, :wechat_num, :string 
  	add_index :people, :wechat_num,  unique: true
  end
end
