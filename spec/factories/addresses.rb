FactoryBot.define do
  
  factory :address do
    zip_code {Faker::Number.number(digits: 7)}
    prefecture {"北海道"}
    city       {"墨田区"}
    address    {"八広"}
    building   {"青葉ビル"}
    phone_tel  {Faker::Number.number(digits: 10)}
  end

end