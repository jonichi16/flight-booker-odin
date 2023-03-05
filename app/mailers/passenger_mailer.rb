class PassengerMailer < ApplicationMailer
  def confirmation_email(passenger)
    @passenger = passenger

    mail to: @passenger.email, subject: "Booking Confirmation"
  end
end
