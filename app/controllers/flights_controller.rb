class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.order(:code).map { |airport| [ airport.code, airport.code ] }
  end
end
