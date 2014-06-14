class SiteController < ApplicationController

  def index
   @products = Product.all
   @cars = Car.all
  end

  def about

  end

end
