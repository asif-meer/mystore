class CreateProductStocks < ActiveRecord::Migration
  def change
    create_table :product_stocks do |t|
      t.integer :quantity, :default => 0
      t.references :product

      t.timestamps
    end
    add_index :product_stocks, :product_id
  end
end
