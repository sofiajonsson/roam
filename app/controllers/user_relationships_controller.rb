class UserRelationshipsController < ApplicationController

  def index
    @active_relationships = current_user.active_relationships
    @passive_relationships = current_user.passive_relationships
  end

  def create
    @followed_user = User.find(params[:user_relationship][:followed_id])
    @user_relationship = current_user.active_relationships.new(followed_id: @followed_user.id)

    if @user_relationship.save

      redirect_to "/users/#{@followed_user.id}"
    else
    
      redirect_to "/users/#{@followed_user.id}"
    end
  end

  def destroy
    @user_relationship = UserRelationship.find(params[:id])
    if @user_relationship.follower_user == current_user
      @user_relationship.destroy
      flash[:message] = "Unfollowed"
    end
    redirect_to "/users/#{@user_relationship.followed_user.id}"
  end

end
