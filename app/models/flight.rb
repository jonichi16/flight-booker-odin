class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  private 

  def self.pick_flight(departure_code, arrival_code, flight_date)
    if flight_date.nil?
      flight_date = Date.today
    else
      flight_date = Date.new(flight_date["year"].to_i, flight_date["month"].to_i, flight_date["day"].to_i)
    end

    self.where("departure_airport_id=?", Airport.find_by_code(departure_code))
        .where("arrival_airport_id=?", Airport.find_by_code(arrival_code))
        .where("Date(date)=?", flight_date)
        .order(:duration)
  end
end
