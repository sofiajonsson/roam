class ProfileController < ApplicationController
	def index
		@current_user = current_user
		@posts = @current_user.posts.order(created_at: :desc)
		@user_relationship = current_user.active_relationships.where(followed_id: @current_user.id).first
	end

end
