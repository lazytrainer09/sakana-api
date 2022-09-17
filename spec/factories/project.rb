FactoryBot.define do
  factory :project do
    name { Faker::Lorem.sentence }

    trait :too_long_name do
      name { Faker::Lorem.characters(number: 101) }
    end
  end
end
