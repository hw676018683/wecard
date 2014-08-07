class AddToPerson < ActiveRecord::Migration
  def change
    add_column :people, :conpany, :string
    add_column :people, :job, :string
    add_column :people, :skype, :string
    add_column :people, :MSN, :string
    add_column :people, :location, :string

  end
end
