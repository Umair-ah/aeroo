# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
flights_data = [
  { flight_number: 'FL001', departure_airport: 'JFK', destination_airport: 'LAX' },
  { flight_number: 'FL002', departure_airport: 'LAX', destination_airport: 'SFO' },
  { flight_number: 'FL003', departure_airport: 'ORD', destination_airport: 'ATL' },
  # Add more flights as needed
]

flights_data.each do |flight|
  Flight.create(flight)
end

Admin.create(email:"admin@test.com", password:"admin123", password_confirmation:"admin123")