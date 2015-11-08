class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :avatar, :string
  	add_column :users, :company, :string
    add_column :users, :location, :string
    add_column :users, :phone_number, :string

    add_column :users, :slug, :string
    add_index :users, :slug, unique: true
  end
end
