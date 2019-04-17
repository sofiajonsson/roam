class CommentsController < ApplicationController
	def new
	end

	def show
	end

	def create
		# byebug
		comment = Comment.create(comment_params)
		redirect_to post_path(comment.post)
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		byebug
		comment = Comment.find(params[:id])
		comment.update(comment_params)
		if comment.save
			redirect_to post_path(comment.post)
		else
			render :edit
		end
	end

	def destroy
		comment = Comment.find(params[:id])
		post = comment.post
		comment.destroy
		redirect_to post_path(post)
	end

	private

	def comment_params
		params.require(:comment).permit!
		#same thing, will add correct params later
	end

end
