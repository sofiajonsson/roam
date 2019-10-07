class Session < ApplicationRecord
	belongs_to :user
	has_one :password

	def create
		user = User.find_by(username: params[:username])
			authenticated = user.try(:authenticate, params[:password])
		return head(:forbidden) unless authenticated
			session[:user_id] = user.id
	end

end
