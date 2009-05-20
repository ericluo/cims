class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = "新增产品信息成功"
      redirect_to products_url
    else
      render :action => "new"
    end
  end

  def index
    @products = Product.all || []
  end
end
