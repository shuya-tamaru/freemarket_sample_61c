FactoryBot.define do
  factory :category do
    name           { Faker::Name.name }
    ancestry       { 1 }
  end
end
