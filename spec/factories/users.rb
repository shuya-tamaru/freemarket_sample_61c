FactoryBot.define do
  
  factory :user do
    nickname              {"tama"}
    last_name             {"木村"}
    first_name            {"拓也"}
    last_name_kana        {"キムラ"}
    first_name_kana       {"タクヤ"}
    email                 {"aaa@aaa"}
    password              {"abcd1234"}
    password_confirmation {"abcd1234"}
    birthday_year         {"1989"}
    birthday_month        {"10"}
    birthday_date         {"13"}
  end

end