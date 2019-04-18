class FeedController < ApplicationController

  def index
    # byebu
    @posts = Post.feed_posts(current_user)
    # @people_they_follow = @current_user.followed_users
    # @posts = []
    # @people_they_follow.each {|person|
    #   @posts << person.posts.to_a
    # }
    # @posts.flatten!
  end



end
