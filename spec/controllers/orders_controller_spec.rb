require 'rails_helper'

describe OrdersController do
  let(:users) { create_list(:user, 2) }
  #create_list(<作成したいファクトリ名>, <作成するインスタンス数(購入者と出品者を用意するため。)>)
  let(:category) { create(:category) }
  let(:brand) { create(:brand) }
  let(:item) { create(:item, saler_user_id: users.first.id, category_id: category.id, brand_id: brand.id) }
  let(:image) { create(:image, item_id: item.id) }
  let(:card) { create(:card, user_id: users.first.id) }
  let(:address) { create(:address, user_id: users.first.id) }

  describe 'GET #new' do
    context 'when user login' do
      before do
        login users.first
        @item = item
        @images = @item.images
        @address = address
        get :new, params:{id: @item[:id]}
      end
      it "renders the :new template" do
        allow(Payjp::Customer).to receive(:create).and_return(PayjpMock.prepare_customer)
        expect(response).to render_template :new
      end

      it "- @itemという変数が正しく定義" do
        expect(assigns(:item)).to eq(@item)
      end

      it "- @imagesという変数が正しく定義" do
        expect(assigns(:image)).to eq(@images)
      end

      it "- @cardという変数が正しく定義" do
        expect(assigns(:card)).to eq(@card)
      end

      it "- @addressという変数が正しく定義" do
        expect(assigns(:address)).to eq(@address)
      end
    end
  end
end