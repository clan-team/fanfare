class AddLatLongColumnsToFavoriteLocations < ActiveRecord::Migration
  def change
  	add_column :favorite_locations, :location_lat, :float, precision: 10, scale: 6
  	add_column :favorite_locations, :location_long, :float, precision: 10, scale: 6
  end
end
