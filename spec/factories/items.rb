FactoryBot.define do
  factory :item do
    name {"テストの商品"}
    images {[FactoryBot.build(:image, item: nil)]}
    discription {"hogeeeeeeeefugaaaaaaaaaaaa"}
    category_id {1}
    brand_id {1}
    saler_user_id {1}
    item_status {1}
    fee_side {1}
    shipping_way {1}
    sipping_days {1}
    price {20000}
    region {1}
    transaction_status {1}
    buyer_user_id {nil}

    association :category
    association :brand
  end
end
