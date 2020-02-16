class Item < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :evaluations
  has_many :likes
  has_many :item_comments
  has_many :trade_comments
  belongs_to :categories
  belongs_to :brands
  has_one :order​​
  accepts_nested_attributes_for :images, allow_destroy: true

  validates :name, presence: true
  validates :discription, presence: true
  validates :item_status, presence: true
  validates :fee_side, presence: true
  validates :shipping_way, presence: true
  validates :region, presence: true
  validates :sipping_days, presence: true
  validates :price, presence: true
  


end
