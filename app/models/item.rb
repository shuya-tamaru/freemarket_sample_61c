class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :prefecture
  belongs_to :user, optional: true
  has_many :images
  has_many :evaluations
  has_many :likes
  has_many :item_comments
  has_many :trade_comments
  belongs_to :size
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

end
