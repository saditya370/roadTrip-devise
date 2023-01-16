class DestinationCreator
    def initialize(params,trip)
        @name = params[:name]
        @address = params[:address]
        @latitude = params[:latitude]
        @longitude = params[:longitude]
        @trip = trip
    end

    def create_destination 
        @destination = @trip.destinations.create!(name: @name,address: @address,latitude: @latitude ,longitude: @longitude) 
    end

end