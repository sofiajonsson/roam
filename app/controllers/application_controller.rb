class ApplicationController < ActionController::Base
helper_method :set_user
helper_method :logged_in?
before_action :authenticate_user


 def current_user
   User.find_by(id: session[:user_id])
 end

 def logged_in?
   !!session[:user_id]
   # !current_user.nil?
 end

 def authenticate_user
   if !logged_in?
     redirect_to login_path
   end
 end

	private

  def set_user
    @user = User.find_by(id: session[:user_id])
  end
end
