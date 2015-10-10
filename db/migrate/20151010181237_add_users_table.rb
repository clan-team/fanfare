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
  		t.integer :lat
  		t.integer :long
  		t.timestamps
  	end
  end
end
