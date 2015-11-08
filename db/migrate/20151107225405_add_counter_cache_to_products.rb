class AddCounterCacheToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :comments_count, :integer, :default => 0
    add_index  :products, :comments_count
  end
end
