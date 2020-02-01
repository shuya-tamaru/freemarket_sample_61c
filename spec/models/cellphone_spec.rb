require 'rails_helper'

describe Cellphone do
  describe '#create' do
    #numberが空では登録できない
    it "is valid with a number" do
      cellphone = build(:cellphone)
      expect(cellphone).to be_valid
    end
    #numberが(070/080/090)で始まって11文字であれば登録できる
    it "is valid with a number that is 11 characters && head of number is (070/080/090)" do
      cellphone = build(:cellphone, number: "07012345678")
      expect(cellphone).to be_valid
    end
    #numberが10文字以下だと登録できない
    it "is invalid with a number that has less than 10 characters" do
      cellphone = build(:cellphone, number: "0701234567")
      cellphone.valid?
      expect(cellphone.errors[:number]).to include("ハイフンなし半角数字で入力してください")
    end
    #numberにハイフンが入っていると登録できない
    it "is invalid with a hyphen" do
      cellphone = build(:cellphone, number: "070-1234-5678")
      cellphone.valid?
      expect(cellphone.errors[:number]).to include("ハイフンなし半角数字で入力してください")
    end
  end

end