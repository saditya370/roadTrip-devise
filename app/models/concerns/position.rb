module Position
    extend ActiveSupport::Concern
    included do 
        before_create :set_position
        def set_position
            @trip = Trip.find_by(id: trip_id)
            max_position = @trip.destinations.maximum(:position)
            self.position = max_position.nil? ? 1 : max_position + 1
          end

        def set_trip
            @trip = Trip.find_by(id: trip_id)
        end

        def find_max_position
            max_position = @trip.destinations.maximum(:position)
        end
    end


end