class Card < ApplicationRecord
  belongs_to :user, optional: true

  validates :number, presence: true, format: {with: /\A\d{16}\z/}
  validates  :validated_date_year, presence: true, format: {with: /\A\d{2}\z/}
  validates  :validated_date_month, presence: true, format: {with: /\b[1-9]\b|\A1[0-2]\Z/}
  validates  :security_number, presence: true, format: {with: /\A\d{3}\z|\A\d{4}\z/}
end
