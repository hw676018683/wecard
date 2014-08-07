class CreateSharedPeople < ActiveRecord::Migration
  
  def change
    create_table :shared_people do |t|
    	t.integer :person_id
    	t.integer :shared_id

		t.timestamps
	end
    	add_index :shared_people,[:person_id,:shared_id],unique: true
  end


end
