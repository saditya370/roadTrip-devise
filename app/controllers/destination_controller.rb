class DestinationController < ApplicationController
  before_action :authenticate_user!
  before_action :set_destination
    
def index 
  
  @destination = @trip.destinations
 
end

def new
    
  
end
def map 
  @dest1 =params[:dest]
  @dest2=params[:destnext]
 
end
def show 
  @destination = @trip.destinations.find_by(id: params[:id])
end

def create 
@destination = @trip.destinations.new(destination_params)

    respond_to do |format|
      if @destination.save
        format.html { redirect_to trip_path(@trip), notice: 'Destination was successfully created.' }
        format.json { render :show, status: :created, location: @destination }
      else
        format.html { render :new }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end

end


private

  def destination_params
    params.require(:destination).permit(:name,:position, :address, :latitude, :longitude)
  end
end
  def set_destination 
    @trip = Trip.find_by(id: params[:trip_id])
  end
