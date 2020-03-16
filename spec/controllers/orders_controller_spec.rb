require 'rails_helper'

describe OrdersController do
  let(:users) { create_list(:user, 2) }
  #create_list(<作成したいファクトリ名>, <作成するインスタンス数(購入者と出品者を用意するため。)>)
  let(:category) { create(:category) }
  let(:brand) { create(:brand) }
  let(:image) { create(:image) }
  let(:item) { create(:item, saler_user_id: users.first.id, category_id: category.id, brand_id: brand.id) }
  let(:card) { create(:card, user_id: users.first.id) }
  let(:address) { create(:address) }

  describe 'GET #new' do
    context 'when user login' do
      before do
        login users.last
        @item = item
        @images = @item.images
        @address = address
        get :new, params:{id: @item[:id]}
      end
      it "renders the :new template" do
        expect(response).to render_template :new
      end
    end
  end
end