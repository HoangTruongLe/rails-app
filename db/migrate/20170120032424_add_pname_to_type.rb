class AddPnameToType < ActiveRecord::Migration
  def change
    add_column :types, :pname, :string
  end
end
