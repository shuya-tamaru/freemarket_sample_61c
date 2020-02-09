class Item < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :evaluations
  has_many :likes
  has_many :item_comments
  has_many :trade_comments
  belongs_to :grandchild_category
  belongs_to :brand
  has_one :order​​

  accepts_nested_attributes_for :images, allow_destroy: true
end
