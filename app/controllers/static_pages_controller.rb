class StaticPagesController < ApplicationController

 
  def landing_page
    @products = Product.limit(3)
    @featured_product = Product.third
  end

  def thank_you
  	@name = params[:name]
	  @email = params[:email]
	  @message = params[:message]
	  ActionMailer::Base.mail(:from => @email,
      :to => 'alexthetford@gmail.com',
      :subject => "A new contact form message from #{@name}",
      :body => @message).deliver_now
	end


  def index
  end


end
