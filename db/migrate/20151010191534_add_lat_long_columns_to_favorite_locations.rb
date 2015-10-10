class AddLatLongColumnsToFavoriteLocations < ActiveRecord::Migration
  def change
  	add_column :favorite_locations, :location_lat, :integer
  	add_column :favorite_locations, :location_long, :integer
  end
end
