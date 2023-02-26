class BookingsController < ApplicationController
  def new
    @flight = Flight.includes(:departure_airport, :arrival_airport).find(params[:flight_id])
    @num_passenger = params[:num_passenger].to_i
    @booking = @flight.bookings.build
    @num_passenger.times { @booking.passengers.build }
  end

  def create
    
  end
end
