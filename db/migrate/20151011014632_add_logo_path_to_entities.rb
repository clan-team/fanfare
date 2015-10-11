class AddLogoPathToEntities < ActiveRecord::Migration
  def change
  	add_column(:entities, :logo_path, :string)
  end
end
