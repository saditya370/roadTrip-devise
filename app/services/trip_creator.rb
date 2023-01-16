class TripCreator

def initialize(trip) 
    @trip = trip
    @user= User.find_by(:id => @trip.user_id)
end

def mail
    TripConfirmationMailer.with(trip: @trip,user: @user).trip_confirmation.deliver_now!
end


end