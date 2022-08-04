FactoryBot.define do
  factory :flight do
    departure_airport_id { 1 }
    arrival_airport_id { 1 }
    start_datetime { "2022-08-04" }
    flight_duration { "MyString" }
  end
end
