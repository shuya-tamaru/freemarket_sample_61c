require 'rails_helper'

describe Cellphone do
  describe '#create' do

    #numberが空では登録できない
    it "is invalid without a number" do
      cellphone = build(:cellphone, number:"")
      cellphone.valid?
      expect(cellphone.errors[:number]).to include("can't be blank")
    end

    #numberが(070)で始る半角数字11文字であれば登録できる
    it "is valid with a number that is 11 characters and head of number is (070/080/090)" do
      cellphone = build(:cellphone, number: "07012345678")
      expect(cellphone).to be_valid
    end

    #numberが(080)で始る半角数字11文字であれば登録できる
    it "is valid with a number that is 11 characters and head of number is (070/080/090)" do
      cellphone = build(:cellphone, number: "08012345678")
      expect(cellphone).to be_valid
    end

    #numberが(090)で始る半角数字11文字であれば登録できる
    it "is valid with a number that is 11 characters and head of number is (070/080/090)" do
      cellphone = build(:cellphone, number: "09012345678")
      expect(cellphone).to be_valid
    end

    #numberが10文字以下だと登録できない
    it "is invalid with a number that has less than 10 characters" do
      cellphone = build(:cellphone, number: "0701234567")
      cellphone.valid?
      expect(cellphone.errors[:number]).to include("ハイフンなし半角数字11桁かつ頭文字3桁が(070/080/090)の数字で入力してください")
    end

    #numberが12文字以上だと登録できない
    it "is invalid with a number that has more than 12 characters" do
      cellphone = build(:cellphone, number: "070123456789")
      cellphone.valid?
      expect(cellphone.errors[:number]).to include("ハイフンなし半角数字11桁かつ頭文字3桁が(070/080/090)の数字で入力してください")
    end

    #numberの最初の3桁が(070/080/090)以外だと登録できない
    it "is invalid with a number that has 3 characters of head isn't (070/080/090)" do
      cellphone = build(:cellphone, number: "06012345678")
      cellphone.valid?
      expect(cellphone.errors[:number]).to include("ハイフンなし半角数字11桁かつ頭文字3桁が(070/080/090)の数字で入力してください")
    end

    #numberにハイフンが入っていると登録できない
    it "is invalid with a hyphen" do
      cellphone = build(:cellphone, number: "070-1234-5678")
      cellphone.valid?
      expect(cellphone.errors[:number]).to include("ハイフンなし半角数字11桁かつ頭文字3桁が(070/080/090)の数字で入力してください")
    end
  end

end