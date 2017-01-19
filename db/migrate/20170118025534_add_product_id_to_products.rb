class AddProductIdToProducts < ActiveRecord::Migration
  def change
    add_reference :product_photos, :product, index: true
    add_foreign_key :product_photos, :products
  end
end
