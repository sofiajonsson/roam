class SearchController < ApplicationController


  def index
    if params[:location_id].empty?
      redirect_to posts_path
    else
      @location = Location.find(params[:location_id])
      @posts = Post.where(location_id: @location.id)
    end
  end

end
