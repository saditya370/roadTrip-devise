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

DestinationCreator.new(params[:destination],@trip).create_destination
# @destination = @trip.destinations.new(destination_params)

    # respond_to do |format|
    #   if @destination.save
    #     format.html { redirect_to trip_path(@trip), notice: 'Destination was successfully created.' }
    #     format.json { render :show, status: :created, location: @destination }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @destination.errors, status: :unprocessable_entity }
    #   end
    # end
    redirect_to trip_path(@trip)
end


private

  def destination_params
    params.require(:destination).permit(:name,:position, :address, :latitude, :longitude,:starting_address,:end_address)
  end
  def set_destination 
    @trip = Trip.find_by(id: params[:trip_id])
  end
end
