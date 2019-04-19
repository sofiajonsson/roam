class SearchController < ApplicationController


  def index
    # byebug
    if params.key?(:location_id)
      if !params[:location_id].empty?
        @location = Location.find(params[:location_id])
        @posts = Post.where(location_id: @location.id)
      else
        redirect_to posts_path
      end
    elsif params.key?(:search_term)
      if !params[:search_term].empty?
        @terms = params[:search_term]
        @posts = Post.where(['title ILIKE ? OR description ILIKE ?', "%#{@terms}%", "%#{@terms}%"])
      else
        redirect_to posts_path
      end
    else
      redirect_to posts_path
    end
  end

end
