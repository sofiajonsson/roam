class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @location = Location.new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
    if @location.update(location_params(:city, :country))
      redirect_to location_path(@location)
    else
      flash[:loc_errors] = @post.errors.full_messages
      redirect_to edit_location_path
    end
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params(*args)
    params.require(:location).permit(*args)
  end

end
