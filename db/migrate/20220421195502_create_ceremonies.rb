class CreateCeremonies < ActiveRecord::Migration[5.0]
  def change
    create_table :ceremonies do |t|
      t.integer :ceremony
      t.integer :year
      t.timestamps
    end
  end
end
