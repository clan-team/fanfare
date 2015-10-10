class AddUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :password_hash
  		t.string :fName
  		t.string :lName
  		t.string :email
  		t.boolean :active
  		t.string :type
  		t.string :profileImg
  		t.float :lat, precision: 10, scale: 6
  		t.float :long, precision: 10, scale: 6
  		t.timestamps
  	end
  end
end
