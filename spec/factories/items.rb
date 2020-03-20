FactoryBot.define do
  factory :item do
    name {"テストの商品"}
    images {[FactoryBot.build(:image, item: nil)]}
    discription {"hogeeeeeeeefugaaaaaaaaaaaa"}
    saler_user_id {1}
    item_status {1}
    fee_side {1}
    shipping_way {1}
    sipping_days {1}
    price {20000}
    region {1}
  end

  factory :item_with_image, class: Item do
    image {File.open("#{Rails.root}/public/images/test.png")}

    after( :create ) do |item|
      create :image, item: item
    end
  end  
end
