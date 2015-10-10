class AddUserEntityTable < ActiveRecord::Migration
  def change
  	create_table :entities_users do |t|
  		t.references :user
  		t.references :entity
  		t.timestamps
  	end
  end
end
