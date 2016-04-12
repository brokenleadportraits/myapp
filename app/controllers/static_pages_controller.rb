class StaticPagesController < ApplicationController

  def landing_page
    @featured_product = Product.fourth
  end


  def index
  end
end
