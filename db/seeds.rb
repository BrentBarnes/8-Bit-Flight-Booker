
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


# 20.times do
#   Flight.create(departure_airport_id: Faker::Number.within(range: 1..8),
#                 arrival_airport_id: Faker::Number.within(range: 1..8),
#                 flight_number: Faker::Number.number(digits: 5),
#                 departure_date: Faker::Date.in_date_period(year: 2022, month: 8),
#                 departure_time: Faker::Time.between(from: DateTime.now, to: DateTime.tomorrow, format: :short).last(5),
#                 flight_duration: "#{rand(1..5)} hour and #{rand(0..59)} minute(s)")
# end


Airport.find_each do |airport|
  i = 1
  while i <= 8
    if airport.id == i
      i += 1
    else
      Flight.create(departure_airport_id: airport.id,
                    arrival_airport_id: i,
                    flight_number: Faker::Number.number(digits: 5),
                    departure_date: Faker::Date.in_date_period(year: 2022, month: 8),
                    departure_time: Faker::Time.between(from: DateTime.now, to: DateTime.tomorrow, format: :short).last(5),
                    flight_duration: "#{rand(1..5)} hour and #{rand(0..59)} minute(s)")
      i += 1
    end
  end
  i = 1
end


# Flight.create! ([{
#   departure_airport_id: 1,
#   arrival_airport_id: 2,
#   flight_number: Faker::Number.number(digits: 5),
#   departure_date: Faker::Date.in_date_period(year: 2022, month: 8),
#   departure_time: Faker::Time.between(from: DateTime.now, to: DateTime.tomorrow, format: :short).last(5),
#   flight_duration: "#{rand(1..5)} hour and #{rand(0..59)} minute(s)"
# },
# {
#   departure_airport_id: 1,
#   arrival_airport_id: 3,
#   flight_number: Faker::Number.number(digits: 5),
#   departure_date: Faker::Date.in_date_period(year: 2022, month: 8),
#   departure_time: Faker::Time.between(from: DateTime.now, to: DateTime.tomorrow, format: :short).last(5),
#   flight_duration: "#{rand(1..5)} hour and #{rand(0..59)} minute(s)"
# },
# {
#   departure_airport_id: 2,
#   arrival_airport_id: 1,
#   flight_number: Faker::Number.number(digits: 5),
#   departure_date: Faker::Date.in_date_period(year: 2022, month: 8),
#   departure_time: Faker::Time.between(from: DateTime.now, to: DateTime.tomorrow, format: :short).last(5),
#   flight_duration: "#{rand(1..5)} hour and #{rand(0..59)} minute(s)"
# },
# {
#   departure_airport_id: 3,
#   arrival_airport_id: 1,
#   flight_number: Faker::Number.number(digits: 5),
#   departure_date: Faker::Date.in_date_period(year: 2022, month: 8),
#   departure_time: Faker::Time.between(from: DateTime.now, to: DateTime.tomorrow, format: :short).last(5),
#   flight_duration: "#{rand(1..5)} hour and #{rand(0..59)} minute(s)"
# }
# ])