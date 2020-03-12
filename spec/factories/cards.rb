FactoryBot.define do
  
  factory :card do
    number              {4242424242424242}
    validated_date_year  {Faker::Number.between(from: 21, to: 31)}
    validated_date_month {Faker::Number.between(from: 1, to: 12)}
    security_number     {Faker::Number.number(digits: 3)}
  end

end