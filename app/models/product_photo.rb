class ProductPhoto < ActiveRecord::Base
  belongs_to :product
  
  has_attached_file :photo, styles: { large: "600*600#", medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  
end
