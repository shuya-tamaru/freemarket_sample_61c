FactoryBot.define do
  factory :item do
    name {"テストの商品"}
    images {"meracari1.png"}
    discription {"hogeeeeeeeefugaaaaaaaaaaaa"}
    grand_child_category {"香水"}
    brand {"Channel"}
    saler_user_id {8}
    item_status {"未使用"}
    shipping_charge {"出品者負担"}
    shipping_way {"ほげ"}
    shipping_days {"3-5日"}
    price {20000}
    region {"東京都"}
  end
end
