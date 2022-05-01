class CreateViewings < ActiveRecord::Migration[5.0]
  def change
    create_table :viewings do |t|
      t.references :profile, foreign_key: true
      t.references :film, foreign_key: true

      t.timestamps
    end
  end
end
