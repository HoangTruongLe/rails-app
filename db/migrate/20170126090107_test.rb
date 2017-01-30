class Test < ActiveRecord::Migration
  def change
    
    add_column :products, :extra_info, :text
  end
end
