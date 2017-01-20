class ChangeColType < ActiveRecord::Migration
  def change
    change_column :products, :discount_by_percentage, :boolean, default: true
  end
end
