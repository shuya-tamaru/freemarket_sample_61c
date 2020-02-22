class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  has_many :sns_credentials
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
  validate :password_complexity
  # validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z|\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]+\z/ }
  # validates :password_confirmation, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z|\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]+\z/ }
  validates :birthday_year, presence: true, format: {with: /\A(19|20)\d{2}\z/}
  validates :birthday_month, presence: true, format: {with: /\b[1-9]\b|\A1[0-2]\Z/}
  validates :birthday_date, presence: true, format: {with: /\b[1-9]\b|\A[1-2][0-9]\Z|\A[3][0-1]\Z/}
  has_many :items

  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    # sns認証したことがあればアソシエーションで取得
    # 無ければemailでユーザー検索して取得orビルド(保存はしない)
    user = sns.user || User.where(email: auth.info.email).first_or_initialize(
      nickname: auth.info.name,
        email: auth.info.email
    )
    # userが登録済みの場合はそのままログインの処理へ行くので、ここでsnsのuser_idを更新しておく
    if user.persisted?
      sns.user = user
      sns.save
    end
    { user: user, sns: sns }
  end
  
  def password_complexity
    # Regexp extracted from https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
    return if password.blank? || password =~ /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z|\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]+\z/

    errors.add :password, '英字と数字両方を含むパスワードかつ7文字以上128文字以下'
  end

end
