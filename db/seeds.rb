
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

Flight.create! ([{
  departure_airport_id: 1,
  arrival_airport_id: 2,
  start_datetime: Date.today,
  flight_duration: "1hr 53m"
},
{
  departure_airport_id: 1,
  arrival_airport_id: 3,
  start_datetime: Date.today,
  flight_duration: "4hr 21m"
},
{
  departure_airport_id: 2,
  arrival_airport_id: 1,
  start_datetime: Date.today,
  flight_duration: "4hr 21m"
},
{
  departure_airport_id: 3,
  arrival_airport_id: 1,
  start_datetime: Date.today,
  flight_duration: "4hr 21m"
}
])