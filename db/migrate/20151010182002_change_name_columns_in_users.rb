class ChangeNameColumnsInUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :lName, :last_name
  	rename_column :users, :fName, :first_name
  end
end
