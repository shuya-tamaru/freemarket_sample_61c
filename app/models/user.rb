class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cellphone
  has_one :address
  has_one :card

  validates :nickname, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true, format: {
    with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/,
    message: "全角カタカナのみで入力して下さい"
  }
  validates :first_name_kana, presence: true, format: {
    with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/,
    message: "全角カタカナのみで入力して下さい"
  }
  validates :password, format: { with: /\A[a-z0-9]+\z/ }
  validates :password_confirmation, format: { with: /\A[a-z0-9]+\z/ }
  validates :birthday_year, presence: true, format: {with: /\A(19|20)\d{2}\z/}
  validates :birthday_month, presence: true, format: {with: /\b[1-9]\b|\A1[0-2]\Z/}
  validates :birthday_date, presence: true, format: {with: /\b[1-9]\b|\A[1-2][0-9]\Z|\A[3][0-1]\Z/}
  has_many :items
end
