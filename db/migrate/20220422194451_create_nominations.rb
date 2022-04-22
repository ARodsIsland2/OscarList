class CreateNominations < ActiveRecord::Migration[5.0]
  def change
    create_table :nominations do |t|
      t.string :nominee
      t.boolean :won
      t.timestamps
    end
  end
end
