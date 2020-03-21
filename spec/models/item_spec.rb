require 'rails_helper'

describe Item do
  describe '#create' do
    it "is valid with correct params" do
      item = build(:item)
      expect(item).to be_valid
    end
    it "is invalid with empty name" do
      item = build(:item, name: "")
      item.valid?
      expect(item.errors[:name])
    end
    it "is invalid with empty category_id" do
      item = build(:item, category_id: "")
      item.valid?
      expect(item.errors[:category_id])
    end
    it "is invalid with empty saler_user_id" do
      item = build(:item, saler_user_id: "")
      item.valid?
      expect(item.errors[:saler_user_id])
    end
    it "is invalid with empty item_status" do
      item = build(:item, item_status: "")
      item.valid?
      expect(item.errors[:item_status])
    end
    it "is invalid with empty fee_side" do
      item = build(:item, fee_side: "")
      item.valid?
      expect(item.errors[:fee_side])
    end
    it "is invalid with empty shipping_way" do
      item = build(:item, shipping_way: "")
      item.valid?
      expect(item.errors[:shipping_way])
    end
    it "is invalid with empty sipping_days" do
      item = build(:item, sipping_days: "")
      item.valid?
      expect(item.errors[:sipping_days])
    end
    it "is invalid with empty region" do
      item = build(:item, region: "")
      item.valid?
      expect(item.errors[:region])
    end
    it "is invalid with empty price" do
      item = build(:item, price: "")
      item.valid?
      expect(item.errors[:price])
    end
  end
end
