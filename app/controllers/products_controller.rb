class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :require_admin
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        flash[:success] = "Product was successfully created."
        if params[:photos]
          params[:photos].each { |image|
            @product.product_photos.create(photo: image)
          }
        end
        format.html { redirect_to @product}
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        flash[:info] = "Product was successfully updated."
        if params[:photos]
          params[:photos].each { |image|
            @product.product_photos.create(photo: image)
          }
        end
        format.html { redirect_to @product }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
      @product.destroy
      flash[:danger] = "Product was successfully destroyed."
      respond_to do |format|
        format.html { redirect_to products_url }
        format.json { head :no_content }
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product)
      .permit(:name, 
              :price, 
              :type_id,
              :vendor_id,
              :video_url,
              :caption,
              :sale_off, 
              :description, 
              :is_service, 
              :product_active,
              :discount_by_percentage,
              :extra_info)
    end
    
    def require_admin
      if !current_user.admin
        flash[:danger] = 'Only admins can perform that action'
        redirect_to root_path
      end
    end

end