class Airport < ApplicationRecord
  after_create :create_airport

  has_many :departing_flights, foreign_key: :departure_airport_id, class_name: "Flight", dependent: :destroy
  has_many :arriving_flights, foreign_key: :arrival_airport_id, class_name: "Flight", dependent: :destroy

  private

  def create_airport
    puts "Airport created!"
  end
end
