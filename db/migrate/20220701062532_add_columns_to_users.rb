class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nickname, :string, index: { unique: true, name: 'unique_nickname' }
    add_column :users, :role, :string
  end
end
