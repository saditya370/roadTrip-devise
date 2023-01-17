class DestinationController < ApplicationController
  before_action :authenticate_user!
  before_action :set_destination
    
  def index  
    @destination = @trip.destinations
  end

  def map; end
    
  def distance;end

  def show 
    @destination = @trip.destinations.find_by(id: params[:id])
  end

  def create 
    destination_create = DestinationCreator.new(params[:destination],@trip).create_destination
    if destination_create
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  private
  def destination_params
    params.require(:destination).permit(:name,:position, :address, :latitude, :longitude,:starting_address,:end_address)
  end

  def set_destination 
    @trip = Trip.find_by(id: params[:trip_id])
  end
end
