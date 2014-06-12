class ProductsController < ApplicationController
# this index action
# this should list all of our products
# index.html.erb
  def index
    @products = Product.all
  end
#this should find a particular product
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  private
  #define a private method using strong parameters
  def product_params
    #params[:product]
    params.require(:product).permit(:name)
  end
end
