FactoryBot.define do
  
  factory :user do
    nickname              {"tama"}
    last_name             {"木村"}
    first_name            {"拓也"}
    last_name_kana        {"キムラ"}
    first_name_kana       {"タクヤ"}
    email                 {"aaa@aaa"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    birthday_year         {"1989"}
    birthday_month        {"10"}
    birthday_date         {"13"}
  end

end