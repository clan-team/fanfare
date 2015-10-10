class AddUsersLocationsJoinTable < ActiveRecord::Migration
  def change
    create_table :favorite_locations_users do |t|
      t.references :favorite_location
      t.references :user
      t.timestamps
    end
  end
end
