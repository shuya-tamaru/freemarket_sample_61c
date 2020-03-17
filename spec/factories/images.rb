FactoryBot.define do
  factory :image do
    association :item
    image    { Rack::Test::UploadedFile.new("spec/fixtures/no_image.png", "image/png")}
    #参考）http://tanihiro.hatenablog.com/entry/2014/01/09/004022
    # images   {[FactoryBot.build(:image, item: nil)]}
    # image    { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'no_image.png')) }

    item_id { 1 }

    # image {File.open("#{Rails.root}/app/assets/images/testpic.png")}
    # association :item
  end
end
