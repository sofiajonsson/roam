class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :show]
	skip_before_action :authenticate_user, only: [:new, :create]

	def index
		@users = User.all
	end
	def show
		@current_user = current_user
		@user = User.find(params[:id])
		@posts = @user.posts.order(created_at: :desc)
		@user_relationship = current_user.active_relationships.where(followed_id: @user.id).first
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to login_path
		else
			flash[:messages] = @user.errors.full_messages
			redirect_to new_user_path
		end
	end

	def edit
		@current_user = current_user
	end

	def update
		current_user.update(user_params)
		redirect_to current_user
	end

	# def profile
	# 	@current_user = current_user
	# 	@user = User.find(params[:id])
  #   @user_relationship = current_user.active_relationships.where(followed_id: @user.id).first
  #   render :show
  # end

	private

	def set_user
		@user= User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:username, :password, :bio, :photo_url)
	end
end
