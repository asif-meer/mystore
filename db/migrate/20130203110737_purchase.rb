class Purchase < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :quantity
      t.integer :product_id

      t.timestamps
    end
  end
end
