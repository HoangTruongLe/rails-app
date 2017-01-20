class AddDiscountByPercentage < ActiveRecord::Migration
  def change
    add_column :products, :discount_by_percentage, :boolean, default: false
    change_column :products, :product_active, :boolean, default: true
  end
end
