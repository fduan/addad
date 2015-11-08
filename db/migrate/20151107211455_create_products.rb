class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false, default: ''
      t.text :description
      t.decimal :base_price, precision: 12, scale: 2
      t.string :currency
      t.string :rate_type

      t.timestamps
    end
  end
end
