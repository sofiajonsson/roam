class UsersController < ApplicationController
	before_action :set_user, [:edit, :show]

	def show
		# @posts=@user.posts.order(created_at: :desc)
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user.valid?
			session[:user_id] = user.id
			redirect_to posts_path
		else
			flash[:messages] = user.errors.full_messages
			redirect_to new_user_path
			render :edit
		end
	end

	def edit

	end

	def update
		current_user.update(user_params)
		redirect_to current_user
	end

	private

	def set_user
		@user= User.find(params[:id])
	end

	def user_params
		params.permit(:user).permit(:username, :password)
	end
end
