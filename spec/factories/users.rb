FactoryBot.define do
  
  factory :user do
    password = Faker::Internet.password(min_length: 7)
    nickname              { Faker::Internet.username }
    last_name             { Faker::Name.last_name }
    first_name            { Faker::Name.first_name }
    last_name_kana        {"キムラ"}
    first_name_kana       {"タクヤ"}
    email                 { Faker::Internet.email }
    password              { password }
    password_confirmation { password }
    birthday_year         { Faker::Number.between(from: 1900, to: 2020) }
    birthday_month        { Faker::Number.between(from: 1, to: 12) }
    birthday_date         { Faker::Number.between(from: 1, to: 31) }
  end

end