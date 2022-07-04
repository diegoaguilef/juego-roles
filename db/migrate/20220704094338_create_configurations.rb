class CreateConfigurations < ActiveRecord::Migration[7.0]
  def change
    create_table :configurations do |t|
      t.string :summary
      t.references :configurable, polymorphic: true
      t.references :user, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
