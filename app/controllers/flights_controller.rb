class FlightsController < ApplicationController
  def index
    @airports = Airport.all.order(:name)
    @airport_options = Airport.all.order(:code).map { |airport| [ airport.code, airport.code ] }
    @flights = Flight.pick_flight(params[:departure_code], params[:arrival_code], params[:date]).includes(:departure_airport, :arrival_airport)
    @default_selected_flight = @flights.first
  end
end
