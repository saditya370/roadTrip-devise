class DestinationController < ApplicationController
    before_action :set_trip
def index 

end

def new
    
    # debugger

end

def create 
# debugger
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
def set_trip
    @trip = Trip.find(params[:trip_id])
  end
  def destination_params
    params.require(:destination).permit(:name,:position, :address, :latitude, :longitude)
  end
end
