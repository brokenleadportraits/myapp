class CommentsController < ApplicationController

	def create
		@product = Product.find(params[:product_id])
		@comment = @product.comments.new(comment_params)
		@comment.user = current_user
		respond_to do |format|
			if @comment.save
		        format.html { redirect_to @product, notice: 'Thanks! Your review has been posted!' }
		     	format.json { render :show, status: :created, location: @product }
		    else
		    	format.html { redirect_to @product, alert: 'Oppps. Something went wrong! Looks like you forgot to write your comment or add a rating!' }
		        format.json { render json: @comment.errors, status: :unprocessable_entity }
			end
		end
	end

		



# redirect_to product_path(@product)



	def destroy
	end







private

	def comment_params
		params.require(:comment).permit(:user_id, :body, :rating)
	end


end
