class Airport < ApplicationRecord
  before_create :create_airport

  private

  def create_airport
    puts "Airport created!"
  end
end
