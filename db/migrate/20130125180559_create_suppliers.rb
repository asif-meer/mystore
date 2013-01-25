class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :company_name
      t.string :contact_name
      t.string :contact_title
      t.string :address
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
