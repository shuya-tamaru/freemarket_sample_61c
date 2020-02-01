class Cellphone < ApplicationRecord
  belongs_to :user, optional: true

  validates :number, presence: true, format: {with: /\A(070|080|090)\d{4}\d{4}\z/, message: 'ハイフンなし半角数字11桁かつ頭文字3桁が(070/080/090)の数字で入力してください'}
end
