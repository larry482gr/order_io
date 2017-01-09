class OrdersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :create, :update, :destroy]
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.includes(:order_products).all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    order_pars = order_params
    order_products_params = order_pars.delete(:order_products_attributes)

    logger.info "\n\n\n"
    logger.info order_pars.inspect
    logger.info "\n\n\n"
    logger.info order_products_params.inspect
    logger.info "\n\n\n"

    @order = Order.new(order_pars)

    order_products = []
    order_products_params.each do |pr_attr|
      order_products << OrderProduct.new(pr_attr)
    end

    @order.order_products = order_products

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:table_id, :is_closed, order_products_attributes: [ :product_id, :size_id, :price, :metadata, :quantity ])
    end
end
