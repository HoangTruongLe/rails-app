class CreateProductPhotos < ActiveRecord::Migration
  def change
    create_table :product_photos do |t|

      t.timestamps null: false
    end
  end
end
