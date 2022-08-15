FactoryBot.define do
  factory :airport do
    location { "MyString" }

    trait :san_fran do
      id { 1 }
      location { "San Francisco, CA" }
    end

    trait :new_york do
      id { 2 }
      location { "New York City, NY" }
    end
  end
end
