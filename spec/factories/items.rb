FactoryBot.define do
  factory :item do
    name {"テストの商品"}
    # image = Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'no_image.png'))
    # image {image}
    images {[FactoryBot.build(:image, item: nil)]}
    discription {"hogeeeeeeeefugaaaaaaaaaaaa"}
    category_id {1}
    brand_id {1}
    saler_user_id {1}
    # item_status {"1"}
    # # shipping_charge {"1"}
    # fee_side {"1"}
    # shipping_way {"1"}
    # sipping_days {"1"}
    item_status {1}
    fee_side {1}
    shipping_way {1}
    sipping_days {1}
    price {20000}
    region {1}
  end
end
