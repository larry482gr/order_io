class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :product_infos]
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    respond_to do |format|
      format.html {
        @products = Product.all.order(updated_at: :desc).page(params[:page]).per(params[:limit])
      }
      format.json {
        @products = Product.all.order(:ordering).order(:label)
      }
    end
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
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
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
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
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
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def product_infos
    db_conn = ActiveRecord::Base.connection
    @product_product_infos = db_conn.exec_query('SELECT * FROM product_infos_products').to_hash

    respond_to do |format|
      format.json { render json: @product_product_infos, status: :ok }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:label, :description, :photo, :ordering, { category_ids: [] }, { product_info_ids: [] }, { product_sizes_attributes:  [ :size_id, :price ] })
    end
end
