
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

Flight.destroy_all

50.times do
  Flight.create(departure_airport_id: Faker::Number.within(range: 1..8),
                arrival_airport_id: Faker::Number.within(range: 1..8),
                flight_number: Faker::Number.number(digits: 5),
                departure_date: Faker::Date.in_date_period(year: 2022, month: 8),
                departure_time: Faker::Time.between(from: DateTime.now, to: DateTime.tomorrow, format: :short).last(5),
                flight_duration: "#{rand(1..5)} hour and #{rand(0..59)} minute(s)")
end
