class CreatePowers < ActiveRecord::Migration[7.0]
  def change
    create_table :powers do |t|
      t.string :name
      t.integer :damage_points
      t.string :description
      t.string :element
      t.references :race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
