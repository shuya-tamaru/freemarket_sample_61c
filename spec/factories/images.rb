FactoryBot.define do
  factory :image do
    image {File.open("#{Rails.root}/app/assets/images/testpic.png")}
    association :item
  end
end
