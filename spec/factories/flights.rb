
FactoryBot.define do
  factory :flight do
    id { 1 }
    departure_airport { create(:airport, :san_fran) }
    arrival_airport { create(:airport, :new_york) }
    departure_date { "2022-08-01" }
    flight_duration { "2 hours" }
    flight_number { 12345 }
    departure_time { "12:00" }
  end
end

