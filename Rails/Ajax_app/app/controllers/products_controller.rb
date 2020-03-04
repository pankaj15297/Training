class ProductsController < ApplicationController
  def index
    @products=Product.all
  end

  def active
    product = Product.find(params[:id])
    product.update(active: !product.active)
    @products=Product.all
  end
end
