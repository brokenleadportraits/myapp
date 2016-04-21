class StaticPagesController < ApplicationController


  def landing_page
    @products = Product.all
    @featured_product = Product.fourth
  end


  def index
  end


end
