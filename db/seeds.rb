Airport.delete_all
puts "Deleting all Airports and creating a new set"

codes = %w(BWI IAD PHX LIT LAX SAN 
           SMF COS DEN BDL FLL MIA)
airports = []

codes.each do |code|
  airports << Airport.create({code: code})
end

Flight.delete_all
puts "Deleting all flights and creating a new set"

10000.times do |i|
  Flight.create(departure_airport: airports.shuffle.pop , arrival_airport: airports.shuffle.pop, departure_date: DateTime.now + rand(1..10).days, flight_duration: rand(90..360))
  puts("created Flight #{i}")
end