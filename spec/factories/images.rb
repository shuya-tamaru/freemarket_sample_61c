FactoryBot.define do
  factory :image do
    image    { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'no_image.png')) }
    item_id { 1 }

    # image {File.open("#{Rails.root}/app/assets/images/testpic.png")}
    # association :item
  end
end
