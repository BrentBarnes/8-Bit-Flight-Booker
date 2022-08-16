
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

(Date.new(2022, 8, 01)..Date.new(2022, 8, 31)).each do |date|
  Airport.find_each do |airport|
    i = 1
    while i <= 8
      if airport.id == i
        i += 1
      else
        2.times do
          Flight.create!(departure_airport_id: airport.id,
                        arrival_airport_id: i,
                        flight_number: Faker::Number.number(digits: 5),
                        departure_date: date,
                        departure_time: Faker::Time.between(from: DateTime.now, to: DateTime.tomorrow, format: :short).last(5),
                        flight_duration: "#{rand(1..5)} hour and #{rand(0..59)} minute(s)")
        end
        i += 1
      end
    end
    i = 1
  end
end
