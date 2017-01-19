class AddVideoUrlAndCaptionToProduct < ActiveRecord::Migration
  def change
    add_column :products, :video_url, :string
    add_column :products, :caption, :text
  end
end
