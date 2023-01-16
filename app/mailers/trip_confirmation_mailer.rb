class TripConfirmationMailer < ApplicationMailer
    default from: "aditya@gmail.com"

    def trip_confirmation
        @user = params[:user]
    
        @url  = "http://google.com"
        mail(to: @user.email,subject: "Your Trip is Created")
    
    end 

end
