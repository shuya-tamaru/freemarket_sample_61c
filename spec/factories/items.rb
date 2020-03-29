FactoryBot.define do
  factory :item do
    name {"テストの商品"}
    # images {[FactoryBot.attributes_for(:image)]}
    images {[FactoryBot.build(:image, item: nil)]}
    discription {"hogeeeeeeeefugaaaaaaaaaaaa"}
    saler_user_id {1}
    item_status {"新品、未使用"}
    fee_side {"送料込み"}
    shipping_way {"未定"}
    sipping_days {'1〜2日で発送'}
    price {20000}
    region {"北海道"}
    transaction_status {1}
    category
    brand
    
  end
 
end
