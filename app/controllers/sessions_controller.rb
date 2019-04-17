class SessionsController < ApplicationController
	skip_before_action :authenticate_user, only: [:new, :create]

	def new
	end

	# def login
	# end

	def create
		user = User.find_by(username: params[:username])
		byebug
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to posts_path
		else
			flash[:message] = 'Incorrect Login'
			redirect_to login_path
		end
	end

	def destroy
		session.clear
		redirect_to login_path
	end

end
