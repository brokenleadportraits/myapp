class StaticPagesController < ApplicationController

 
  def landing_page
    @products = Product.limit(3)
    @featured_product = Product.second
  end


  def index
  end


end
