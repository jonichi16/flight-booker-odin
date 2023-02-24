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
  { code: "BCD", name: "Bacolod-Silay Airport" },
  { code: "DRP", name: "Bicol International Airport" },
  { code: "TAG", name: "Bohol-Panglao International Airport " },
  { code: "BXU", name: "Bancasi Airport" },
  { code: "CYZ", name: "Cauayan Airport" },
  { code: "CBO", name: "Cotabato Airport" },
  { code: "TAC", name: "Daniel Z. Romualdez Airport" },
  { code: "DPL", name: "Dipolog Airport" },
  { code: "DGT", name: "Dumaguete-Sibulan Airport" },
  { code: "GES", name: "General Santos International Airport" },
  { code: "MPH", name: "Godofredo P. Ramos Airport" },
  { code: "OZC", name: "Labo Airport" },
  { code: "CGY", name: "Laguindingan Airport" },
  { code: "WNP", name: "Naga Airport" },
  { code: "PAG", name: "Pagadian Airport" },
  { code: "RXS", name: "Roxas Airport" },
  { code: "TWT", name: "Sanga-Sanga Airport" },
  { code: "SJI", name: "San Jose Airport" },
  { code: "SFS", name: "Subic Bay International Airport" },
  { code: "TUG", name: "Tuguegarao Airport" },
  { code: "ZAM", name: "Zamboanga International Airport" },
  { code: "BSO", name: "Basco Airport" },
  { code: "CYP", name: "Calbayog Airport" },
  { code: "CGM", name: "Camiguin Airport" },
  { code: "CRM", name: "Catarman National Airport" },
  { code: "CYU", name: "Cuyo Airport" },
  { code: "EUQ", name: "Evelio B. Javier Airport" },
  { code: "USU", name: "Francisco B. Reyes Airport" },
  { code: "JOL", name: "Jolo Airport" },
  { code: "BAG", name: "Loakan Airport" },
  { code: "MRQ", name: "Marinduque Airport" },
  { code: "MBT", name: "Moises R. Espinosa Airport" },
  { code: "OMC", name: "Ormoc Airport" },
  { code: "SGL", name: "Sangley Point Airport" },
  { code: "SWL", name: "San Vicente Airport" },
  { code: "IAO", name: "Sayak Airport" },
  { code: "SUG", name: "Surigao Airport" },
  { code: "TDG", name: "Tandag Airport" },
  { code: "TBH", name: "Tugdan Airport" },
  { code: "VRC", name: "Virac Airport" },
])

airport_ids = Airport.ids
100.times do |i|
  departure = rand(airport_ids[0]..airport_ids[-1])
  arrival = nil
  loop do
    arrival = rand(airport_ids[0]..airport_ids[-1])
    break unless departure == arrival
  end

  Flight.create(
    departure_airport_id: departure,
    arrival_airport_id: arrival,
    date: Time.now + rand(0..5).day,
    duration: rand(1..3)
  )

  puts "Flight created!"
end