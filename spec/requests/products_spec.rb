require "rails_helper"

RSpec.describe "ProductsController", type: :request do

  describe "POST :create" do
    context 'with valid params' do
      subject { post :create, params: { products: params } }
      let!(:params) {
        {
          name: "テストの商品",
          image: "meracari1.png",
          discription: "hogeeeeeeeefugaaaaaaaaaaaa",
          grand_chaild_category: "香水",
          brand: "Chanel",
          saler_user_id: 8,
          item_status: "未使用",
          shipping_charge: "出品者負担",
          shipping_way: "ほげ",
          shipping_days: "3-5日",
          price: 20000,
          region: "東京都"
        }
      }
    end
  end
end
