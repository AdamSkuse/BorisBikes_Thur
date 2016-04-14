require './lib/docking_station.rb'
# require './lib/van.rb'
# require './lib/garage.rb'

# Initialize objects
station = DockingStation.new
# garage = Garage.new
# van = Van.new
bike = Bike.new
bike_array = Array.new(10) {Bike.new}

#Print initialized objects
p "Docking Station: #{station}"
# p "Garage: #{garage}"
# p "Van: #{van}"
p "Bike: #{bike}"
puts
p "Array of Bikes: #{bike_array}"

p bike.report_broken
p station.dock(bike)
p station.release_bike



#Scenario_01
# bike.report_broken
# station.dock(bike)
# p van.collect_broken_bikes(station)

#Scenation_02
# p station
# puts
# bike_array.each { |bikes|
#	bikes.report_broken
#	station.dock(bikes)
# }
# puts
# p van.collect_broken_bikes(station)
# puts
# p station
