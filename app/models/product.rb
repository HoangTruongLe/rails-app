class Product < ActiveRecord::Base
    belongs_to :type
    belongs_to :vendor
    has_many :product_photos, :dependent => :destroy    

end
