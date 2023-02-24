# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# This commands will reset the tables to repopulate the tables
puts "Deleting tables..."
Flight.delete_all
Airport.delete_all
puts "Tables deleted"

airports = Airport.create([
  { code: "DRP", name: "Bicol International Airport" },
  { code: "TAG", name: "Bohol-Panglao International Airport " },
  { code: "BXU", name: "Bancasi Airport" },
  { code: "CYZ", name: "Cauayan Airport" },
  { code: "CBO", name: "Cotabato Airport" },
  { code: "DPL", name: "Dipolog Airport" },
  { code: "DGT", name: "Dumaguete-Sibulan Airport" },
  { code: "GES", name: "General Santos International Airport" },
  { code: "OZC", name: "Labo Airport" },
  { code: "CGY", name: "Laguindingan Airport" },
  { code: "PAG", name: "Pagadian Airport" },
  { code: "RXS", name: "Roxas Airport" },
  { code: "SFS", name: "Subic Bay International Airport" },
  { code: "TUG", name: "Tuguegarao Airport" },
  { code: "ZAM", name: "Zamboanga International Airport" },
  { code: "BSO", name: "Basco Airport" },
  { code: "CYP", name: "Calbayog Airport" },
  { code: "CGM", name: "Camiguin Airport" },
  { code: "OMC", name: "Ormoc Airport" },
  { code: "SUG", name: "Surigao Airport" }
])

airport_ids = Airport.ids
airport_ids.each do |departure|
  rand(1..3).times do
    airport_ids.each do |arrival|
      next if arrival == departure
  
      rand(1..3).times do |i|
        Flight.create(
              departure_airport_id: departure,
              arrival_airport_id: arrival,
              date: DateTime.new(2023, 2, Time.now.day + i, rand(0..23), 0, 0),
              duration: rand(1..3)
            )
        
        puts "Flight created"
      end
    end
  end
end
