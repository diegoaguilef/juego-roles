class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level
      t.integer :mana
      t.integer :life_points
      t.string :status
      t.references :race, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
