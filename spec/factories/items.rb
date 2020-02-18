FactoryBot.define do
  factory :item do
    name {"テストの商品"}
    # image {["meracari1.png"]}
    discription {"hogeeeeeeeefugaaaaaaaaaaaa"}
    category_id {1}
    brand_id {1}
    saler_user_id {1}
    item_status {"1"}
    shipping_charge {"1"}
    shipping_way {"1"}
    sipping_days {"1"}
    price {20000}
    region {"東京都"}
  end
end
