class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
    	t.string :address
    	t.string :postal_code
    	t.string :province_state
    	t.string :country
    	t.integer :square_feet
    	t.integer :bathrooms
    	t.integer :bedrooms
    	t.integer :price
    	t.boolean :furnished?
    	t.boolean :utilities?
    	t.text :description
      t.timestamps
    end
  end
end
