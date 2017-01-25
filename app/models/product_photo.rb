class ProductPhoto < ActiveRecord::Base
  belongs_to :product
  
  has_attached_file :photo, styles: { 
    # original_15: {},
    # original_10: {},
    # original_5: {},
    # convert_options: {
    #   original_15: "-resample 15 -strip",
    #   original_10: "-resample 10 -strip",
    #   original_5: "-resample 5 -strip",
    # },
    large: "750x520#", 
    medium: "300x300#", 
    thumb: "100x100#" },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  
end
