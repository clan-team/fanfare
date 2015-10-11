class AddCategoryColumnToEntities < ActiveRecord::Migration
  def change
  	add_column(:entities, :category, :string)
  end
end
