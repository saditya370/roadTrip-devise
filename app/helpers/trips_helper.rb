module TripsHelper
    def prev_destination(destination_trip_id, destination_id) 
        Destination.find_by(:trip_id=> destination_trip_id,:id=>destination_id)
    end

    def next_destination(destination_trip_id,destination_id)
        Destination.find_by(:trip_id=> destination_trip_id,:id=>destination_id)
    end

end
