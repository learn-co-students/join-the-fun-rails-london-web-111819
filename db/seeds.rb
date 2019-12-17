# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do 
    Taxi.create
end

5.times do
    Passenger.create
end

5.times do
    Ride.create(:taxi_id => Taxi.all.sample.id, :passenger_id => Passenger.all.sample.id)
end