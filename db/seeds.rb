# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# This commands will reset the tables to repopulate the tables
airports = Airport.create([
  { code: "ASG", name: "Asgard Airport" },
  { code: "VAN", name: "Vanaheim Airport " },
  { code: "ALF", name: "Alfheim Airport" },
  { code: "MID", name: "Midgard Airport" },
  { code: "JOT", name: "Jotunheim Airport" },
  { code: "NID", name: "Nidavellir Airport" },
  { code: "SVA", name: "Svartalfheim Airport" },
  { code: "HEL", name: "Helheim" },
  { code: "MUS", name: "Muspelheim Airport" }
])

airport_ids = Airport.ids
airport_ids.each do |departure|
  rand(1..3).times do
    airport_ids.each do |arrival|
      next if arrival == departure
  
      rand(1..30).times do |i|
        Flight.create(
              departure_airport_id: departure,
              arrival_airport_id: arrival,
              date: Time.new(Time.now.year, Time.now.month, Time.now.day, rand(0..23), 0, 0) + i.day,
              duration: rand(1..3)
            )
        
        puts "Flight created"
      end
    end
  end
end
