class PropertyFormAttributes < ActiveRecord::Migration
  def up
  	add_column :properties, :furnished, :boolean
  	add_column :properties, :city, :string
	add_column :properties, :move_in_date, :date
	add_column :properties, :minimum_lease_duration, :integer


  end

  def down
  	remove_column :properties, :furnished
  	remove_column :properties, :city
	remove_column :properties, :move_in_date
	remove_column :properties, :minimum_lease_duration
	
  end
end
