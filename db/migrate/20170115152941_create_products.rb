class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.float :sale_off
      t.text :description
      t.boolean :is_service
      t.boolean :product_active

      t.timestamps null: false
    end
  end
end
