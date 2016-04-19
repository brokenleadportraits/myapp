class StaticPagesController < ApplicationController



   def landing_page
    @products = Product.limit(3)
  end

  def landing_page
    @featured_product = Product.fourth
  end


  def index
  end


end
