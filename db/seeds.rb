
Airport.destroy_all

Airport.create!([{
  location: "San Francisco, CA"
},
{
  location: "New York City, NY"
},
{
  location: "Atlanta, GA"
},
{
  location: "Chicago, IL"
},
{
  location: "Los Angeles, CA"
},
{
  location: "Dallas, TX"
},
{
  location: "Orlando, FL"
},
{
  location: "Denver, CO"
}])

50.times do
  Flight.create(departure_airport_id: Faker::Number.within(range: 1..8),
                arrival_airport_id: Faker::Number.within(range: 1..8),
                start_datetime: Faker::Date.in_date_period(year: 2022, month: 8),
                flight_duration: "#{rand(1..5)} hour and #{rand(0..59)} minute(s)")
end


# Flight.create! ([{
#   departure_airport_id: 1,
#   arrival_airport_id: 2,
#   start_datetime: Date.today,
#   flight_duration: "1hr 53m"
# },
# {
#   departure_airport_id: 1,
#   arrival_airport_id: 3,
#   start_datetime: Date.today,
#   flight_duration: "4hr 21m"
# },
# {
#   departure_airport_id: 2,
#   arrival_airport_id: 1,
#   start_datetime: Date.today,
#   flight_duration: "4hr 21m"
# },
# {
#   departure_airport_id: 3,
#   arrival_airport_id: 1,
#   start_datetime: Date.today,
#   flight_duration: "4hr 21m"
# }
# ])