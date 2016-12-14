class ProductSizesController < ApplicationController
  # GET /product_sizes.json
  def index
    @product_sizes = ProductSize.all.order(:id)
  end
end
