class AddIsSharedToPerson < ActiveRecord::Migration
  def change
  	add_column :people, :is_sharad, :boolean, :default => false
  end
end
