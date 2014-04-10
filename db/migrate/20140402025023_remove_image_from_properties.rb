class RemoveImageFromProperties < ActiveRecord::Migration
  def change
  	remove_column  :properties, :image
  end
end
