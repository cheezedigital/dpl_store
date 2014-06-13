class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]

# this index action
# this should list all of our products
# index.html.erb
  def index
    @products = Product.all
  end
#this should find a particular product
  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'Good job! You did it.'
      redirect_to products_path
    else
      flash[:alert] = 'Bad job! You failed.'
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update_attributes(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
  #define a private method using strong parameters
  def product_params
    #params[:product]
    params.require(:product).permit(:name)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
