class CreateHabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :habilities do |t|
      t.string :name
      t.integer :damage_points
      t.string :description
      t.string :category
      t.references :race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
