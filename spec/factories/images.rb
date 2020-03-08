FactoryBot.define do
  factory :image do
    image {File.open("#{Rails.root}/public/images/test.png")}
    # image {"test.png"}
    item 
  end
end
