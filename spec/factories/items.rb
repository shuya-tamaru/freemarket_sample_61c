FactoryBot.define do
  factory :item do
    name {"テストの商品"}
    price {20000}
    item_status {1}
    shipping_way {1}
    discription {"hogeeeeeeeefugaaaaaaaaaaaa"}
    saler_user_id {1}
    fee_side{1}
    region {1}
    sipping_days {1}
    transaction_status{1}
    category_id {1}
    brand_id {1}
  end
end
