class OrdersController < ApplicationController
before_filter :authenticate_user! #USER MUST SIGN IN BEFORE CAN ORDER OR VIEW THE PAGE

	def index
	end

	def show
	end

	def new
	end

	def create
		@order = Order.create(order_params)
		respond_with @order
	end

	def destroy
	end

	private

    def order_params
      params.require(:order).permit(:user_id, :product_id, :total)
    end
end