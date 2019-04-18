class SearchController < ApplicationController


  def index
    @location = Location.find(params[:location_id])
    @posts = Post.where(location_id: @location.id)
  end

end
