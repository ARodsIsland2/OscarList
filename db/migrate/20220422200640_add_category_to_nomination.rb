class AddCategoryToNomination < ActiveRecord::Migration[5.0]
  def change
    add_column :nominations, :category_id, :integer
  end
end
