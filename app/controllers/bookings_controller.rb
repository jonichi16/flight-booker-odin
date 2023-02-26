class BookingsController < ApplicationController

  def new
    @flight = Flight.includes(:departure_airport, :arrival_airport).find(params[:flight_id])
    @num_passenger = params[:num_passenger].to_i
    @booking = @flight.bookings.build
    @num_passenger.times { @booking.passengers.build }
  end

  def create
    @flight = Flight.includes(:departure_airport, :arrival_airport).find(params[:booking][:flight_id])
    @booking = @flight.bookings.create(booking_params)

    if @booking.save
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
