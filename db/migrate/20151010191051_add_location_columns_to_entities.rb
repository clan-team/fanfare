class AddLocationColumnsToEntities < ActiveRecord::Migration
  def change
  	add_column :entities, :location_name, :string
  	add_column :entities, :location_lat, :integer
  	add_column :entities, :location_long, :integer  	
  end
end
