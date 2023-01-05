class DestinationController < ApplicationController
  before_action :authenticate_user!

    
def index 
  @trip = Trip.find(params[:trip_id])
  @destination = @trip.destinations.all
 
end

def new
    
  
end
def map 
  @dest1 =params[:dest]
   @dest2=params[:destnext]
 
# debugger  
end
def show 
  @trip = Trip.find(params[:trip_id])
  @destination = @trip.destinations.find(params[:id])
 
  

end

def create 
# debugger
@trip = Trip.find(params[:trip_id])
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
