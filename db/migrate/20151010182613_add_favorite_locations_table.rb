class AddFavoriteLocationsTable < ActiveRecord::Migration
  def change
  	create_table :favorite_locations do |t|
  		t.string :username
  		t.string :location
  		t.timestamps
  	end
  end
end
