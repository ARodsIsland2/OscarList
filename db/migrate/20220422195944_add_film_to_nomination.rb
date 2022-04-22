class AddFilmToNomination < ActiveRecord::Migration[5.0]
  def change
    add_column :nominations, :film_id, :integer
  end
end
