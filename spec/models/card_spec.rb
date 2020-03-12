# require 'rails_helper'

# describe Card do

#   describe '#create' do

#     #4ページ目の全ての項目が存在すれば登録できる
#     it "is valid with a number, validated_date_year, validated_date_month, validated_date_date, security_number" do
#       card = build(:card)
#       expect(card).to be_valid
#     end

#     #numberが空だと登録できない
#     it "is invalid without a number" do
#       card = build(:card, number: "")
#       card.valid?
#       expect(card.errors[:number]).to include("can't be blank")
#     end

#     #validated_date_yearが空だと登録できない
#     it "is invalid without a validated_date_year" do
#       card = build(:card, validated_date_year: "")
#       card.valid?
#       expect(card.errors[:validated_date_year]).to include("can't be blank")
#     end

#     #validated_date_monthが空だと登録できない
#     it "is invalid without a validated_date_month" do
#       card = build(:card, validated_date_month: "")
#       card.valid?
#       expect(card.errors[:validated_date_month]).to include("can't be blank")
#     end

#     #security_numberが空だと登録できない
#     it "is invalid without a security_number" do
#       card = build(:card, security_number: "")
#       card.valid?
#       expect(card.errors[:security_number]).to include("can't be blank")
#     end

#     #numberが半角数字13桁以下だと登録できない
#     it "is invalid with a number that is less than 13 characters" do
#       card = build(:card, number: "1234567890123")
#       card.valid?
#       expect(card.errors[:number]).to include("is invalid")
#     end

#     #numberが半角数字14桁だと登録できる
#     it "is valid with a number that is 14 characters" do
#       card = build(:card, number: "12345678901234")
#       expect(card).to be_valid
#     end

#     #numberが半角数字15桁だと登録できる
#     it "is valid with a number that is 15 characters" do
#       card = build(:card, number: "123456789012345")
#       expect(card).to be_valid
#     end

#     #numberが半角数字16桁だと登録できる
#     it "is valid with a number that is 15 characters" do
#       card = build(:card, number: "1234567890123456")
#       expect(card).to be_valid
#     end

#     #numberが半角数字17桁以上だと登録できない
#     it "is invalid with a number that is more than 17 characters" do
#       card = build(:card, number: "12345678901234567")
#       card.valid?
#       expect(card.errors[:number]).to include("is invalid")
#     end

#     #numberが全角数字16桁だと登録できない
#     it "is invalid with a number that is full_width 16 characters" do
#       card = build(:card, number: "１２３４５６７８９０１２３４５６")
#       card.valid?
#       expect(card.errors[:number]).to include("is invalid")
#     end

#     #security_numberが半角数字2桁以下だと登録できない
#     it "is invalid with a security_number that is less than 2 characters" do
#       card = build(:card, security_number: "12")
#       card.valid?
#       expect(card.errors[:security_number]).to include("is invalid")
#     end

#     #security_numberが半角数字5桁以上だと登録できない
#     it "is invalid with a security_number that is more than 5 characters" do
#       card = build(:card, security_number: "12345")
#       card.valid?
#       expect(card.errors[:security_number]).to include("is invalid")
#     end

#     #security_numberが全角数字だと登録できない
#     it "is invalid with a security_number that is full_width characters" do
#       card = build(:card, security_number: "１２３")
#       card.valid?
#       expect(card.errors[:security_number]).to include("is invalid")
#     end
    
#   end
# end