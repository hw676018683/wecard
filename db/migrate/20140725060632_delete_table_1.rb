class DeleteTable1 < ActiveRecord::Migration
  def change
  	drop_table :shared_people
  end
end
