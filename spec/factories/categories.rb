FactoryBot.define do
  factory :category do
    name           { Faker::Name.name }
    # parent_id      { 1 }
    # grandparent_id { 1 }
    ancestry       { 1 }
  end
end
