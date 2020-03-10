FactoryBot.define do
  
  factory :card do
    number              {'4242424242424242'}
    validated_date_year  {Faker::Number.between(from: 20, to: 40)}
    validated_date_month {Faker::Number.between(from: 1, to: 12)}
    security_number     {Faker::Number.number(digits: 3)}
  end

end