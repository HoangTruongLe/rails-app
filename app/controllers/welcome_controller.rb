class WelcomeController < ApplicationController
  before_action :set_product, only: [:show]
  layout 'index'
  
  def index
    @types = Type.all
    @products = Product.where(product_active: true)
  end
  
  def products
    @types = Type.all
    @products = Product.where(product_active: true)
  end
  
  def show
    @types = Type.all
  end
  
  private
    def set_product
      @product = Product.find(params[:id])
    end
  
end
