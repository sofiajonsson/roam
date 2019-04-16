class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end

	def create
		Comment.create(comment_params)
			redirect_to posts_path

	def update
		@comment = Comment.update(comment_params)
			if @comment.save
				redirect_to @comment
			else
				render :edit
			end
		end

		def show
			@comment = Comment.find(params[:id])
		end

		private

		def comment_params
			params.require(:comment).permit!
			#same thing, will add correct params later
		end

end
