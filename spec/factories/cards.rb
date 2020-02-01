FactoryBot.define do
  
  factory :card do
    number              {"1234567890123456"}
    validated_date_year  {"20"}
    validated_date_month {"12"}
    security_number     {"123"}
  end

end