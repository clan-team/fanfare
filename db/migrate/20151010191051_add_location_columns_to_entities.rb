class AddLocationColumnsToEntities < ActiveRecord::Migration
  def change
  	add_column :entities, :location_name, :string
  	add_column :entities, :location_lat, :float, precision: 10, scale: 6
  	add_column :entities, :location_long, :float, precision: 10, scale: 6
  end
end
