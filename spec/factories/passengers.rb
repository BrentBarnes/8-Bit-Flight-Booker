FactoryBot.define do
  factory :passenger do
    name { "Dan" }
    email { "Dan@gmail.com" }
    booking_id { 1 }
  end

  factory :random_passenger, class: Passenger do
    name { Faker::Name.first_name }
    email { Faker::Internet.email }
    flight_id { Faker::Number.between(1..500) }
    booking_id { Faker::Number.between(from: 501, to: 1000) }
  end
end
