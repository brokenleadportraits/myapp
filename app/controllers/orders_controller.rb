class OrdersController < ApplicationController
	before_filter :authenticate_user! #USER MUST SIGN IN BEFORE CAN ORDER OR VIEW THE PAGE
  	protect_from_forgery
  	skip_before_action :verify_authenticity_token, if: :json_request?
  	respond_to :json, :html

	def index
		@orders = Order.all.to_json(:include => [{:product => {:only => :name}}, {:user => {:only => :email}}])
    	respond_with @orders
	end

	def show
		@order = Order.find(params[:id]).to_json(:include => [{:product => {:only => :name}}, {:user => {:only => :email}}])
    	respond_with @order
	end

	def new
	end

	def create
		@order = Order.create(order_params)
		respond_with @order
	end

	def destroy
		respond_with Order.destroy(params[:id])
	end

	protected

	def json_request?
		request.format.json?
	end

	private

    def order_params
      params.require(:order).permit(:user_id, :product_id, :total)
    end
end