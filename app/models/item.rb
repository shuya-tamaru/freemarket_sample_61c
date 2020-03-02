class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :prefecture
  belongs_to :user, optional: true
  has_many :images, dependent: :destroy
  has_many :evaluations
  has_many :likes
  has_many :item_comments
  has_many :trade_comments
  belongs_to :category
  belongs_to :brand, optional: true
  has_one :order​​
  accepts_nested_attributes_for :images, allow_destroy: true

  price_validate = /\A\b[3-9][0-9][0-9]\b\Z|\A\b[1-9][0-9][0-9][0-9]\b\z|\A\b[1-9][0-9][0-9][0-9][0-9]\b\z|\A\b[1-9][0-9][0-9][0-9][0-9][0-9]\b\z|\A\b[1-9][0-9][0-9][0-9][0-9][0-9][0-9]\b\z/

  validates_associated :images
  validates :name, presence: true
  validates :discription, presence: true
  validates :item_status, presence: true
  validates :fee_side, presence: true
  validates :shipping_way, presence: true
  validates :region, presence: true
  validates :sipping_days, presence: true
  validates :price, presence: true, format: {with: price_validate}
  validates :category_id, presence: true
  validates :brand_id, presence: true
  validates :images, presence: true

  enum item_status: {
    新品、未使用:1, 未使用に近い:2, 目立った傷や汚れなし:3, やや傷や汚れあり:4, 傷や汚れあり:5, 全体的に状態が悪い:6
  }

  enum fee_side: {
    送料込み:1, 着払い（購入者負担）:2
  }

  enum shipping_way: {
    未定:1, らくらくメルカリ便:2, ゆうメール:3
  }

  enum sipping_days: {
    '---':1, '1〜2日で発送':2, '2〜3日で発送':3, '4〜7日で発送':4
  }

  enum region: {
    北海道:1, 青森県:2, 岩手県:3, 宮城県:4, 秋田県:5, 山形県:6, 福島県:7, 茨城県:8, 栃木県:9, 群馬県:10, 
    埼玉県:11, 千葉県:12, 東京都:13, 神奈川県:14, 新潟県:15, 富山県:16, 石川県:17, 福井県:18, 山梨県:19, 長野県:20, 
    岐阜県:21, 静岡県:22, 愛知県:23, 三重県:24, 滋賀県:25, 京都府:26, 大阪府:27, 兵庫県:28, 奈良県:29, 和歌山県:30, 
    鳥取県:31, 島根県:32, 岡山県:33, 広島県:34, 山口県:35, 徳島県:36, 香川県:37, 愛媛県:38, 高知県:39, 福岡県:40, 
    佐賀県:41, 長崎県:42, 熊本県:43, 大分県:44, 宮崎県:45, 鹿児島県:46, 沖縄県:47, 
  }

  # enum size: {
  #   'XXS以下':1, 'XS(SS)':2, 'S':3, 'M':4, 'L':5, 'XL(LL)':6, '2XL(3L)':7, '3XL(4L)':8, '4XL(5L)以上':9, 'FREE SIZE':10, 
  #   '23.5cm':11, '24cm':12, '24.5cm':13, '25cm':14, '25.5cm':15, '26cm':16, '26.5cm':17, '27cm':18, '27.5cm':19, '28cm':20, 
  #   '28.5cm':11, '29cm':12, '29.5cm':13, '30cm':14, '30.5cm':15, '31cm以上':16 
  # }

end
