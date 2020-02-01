require 'rails_helper'

describe Address do
  describe "#create" do

    #３ページ目の全ての項目が存在すれば登録できる
    it "is valid with a zip_code, prefecture, city, address, building, phone_tel " do
      address = build(:address)
      expect(address).to be_valid
    end

    #電話番号とビル名がなくても他があれば登録できる
    it "is valid with a zip_code, prefecture, city, address" do
      address = build(:address)
      expect(address).to be_valid
    end

    #zip_codeが空だと登録できない
    it "is invalid without a zip_code" do
      address = build(:address, zip_code: "")
      address.valid?
      expect(address.errors[:zip_code]).to include("can't be blank")
    end

    #prefectureが空だと登録できない
    it "is invalid without a prefecture" do
      address = build(:address, prefecture: "")
      address.valid?
      expect(address.errors[:prefecture]).to include("can't be blank")
    end

    #cityが空だと登録できない
    it "is invalid without a city" do
      address = build(:address, city: "")
      address.valid?
      expect(address.errors[:city]).to include("can't be blank")
    end

    #addressが空だと登録できない
    it "is invalid without a city" do
      address = build(:address, address: "")
      address.valid?
      expect(address.errors[:address]).to include("can't be blank")
    end

    #buildingが空でも登録できる
    it "is invalid without a city" do
      address = build(:address, building: "")
      address.valid?
      expect(address).to be_valid
    end

    #phone_telが空でも登録できる
    it "is invalid without a city" do
      address = build(:address, phone_tel: "")
      address.valid?
      expect(address).to be_valid
    end

    #zip_codeが半角数字6文字以下だと登録できない
    it "is invalid with a zip_code that is less than 7 characters " do
      address = build(:address, zip_code: "123456")
      address.valid?
      expect(address.errors[:zip_code]).to include('ハイフンなし半角数字7文字で入力してください')
    end

    #zip_codeが半角数字8文字以上だと登録できない
    it "is invalid with a zip_code that is more than 8 characters " do
      address = build(:address, zip_code: "12345678")
      address.valid?
      expect(address.errors[:zip_code]).to include('ハイフンなし半角数字7文字で入力してください')
    end

    #zip_codeがハイフンを含めて7文字だと登録できない
    it "is invalid with a zip_code that is 7 characters include hyphen" do
      address = build(:address, zip_code: "123-4567")
      address.valid?
      expect(address.errors[:zip_code]).to include('ハイフンなし半角数字7文字で入力してください')
    end

    #zip_codeが全角数字7文字だと登録できない
    it "is invalid with a zip_code that is full_width 7 characters " do
      address = build(:address, zip_code: "１２３４５６７")
      address.valid?
      expect(address.errors[:zip_code]).to include('ハイフンなし半角数字7文字で入力してください')
    end

  end
end