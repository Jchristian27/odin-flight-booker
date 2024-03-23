class PassengerMailer < ApplicationMailer
  default from: 'noreply@example.com'

  def send_flight_confirmation_email(booking)
    @booking = booking
    @passengers = @booking.passengers
    @url = "localhost:3000/bookings/#{@booking.id}"
    mail(to: @passengers.pluck(:email), subject: "Your Booking Confirmation")
  end
end
