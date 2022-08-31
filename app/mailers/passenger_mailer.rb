class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def booked_flight_confirmation_email
    @booking = params[:booking]
    @flight = @booking.flight
    @passenger = params[:passenger]

    mail(to: @passenger.email, subject: 'Welcome Aboard 8-Bit Airlines!')
  end
end
