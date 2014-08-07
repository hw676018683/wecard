class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :picture
      t.integer :wechat_num
      t.integer :phone
      t.integer :qq
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
