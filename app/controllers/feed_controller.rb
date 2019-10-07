class FeedController < ApplicationController

  def index
    @posts = Post.feed_posts(current_user)
  end

end
