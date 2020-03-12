require 'rails_helper'

describe OrdersController do
  let(:users) { create_list(:user, 2) }
  #create_list(<作成したいファクトリ名>, <作成するインスタンス数(購入者と出品者を用意するため。)>)
  let(:category) { create(:category) }
  let(:image) { create(:image) }
  let(:item) { create(:item, category_id: category.id, image_id: image.id) }
  describe 'GET #new' do
    context 'when user login' do
      before do
        login users.last
        @item = item
        @images = @item.images
        get :new, params:{id: @item[:id]}
      end
        it "renders the :new template" do
        expect(response).to render_template :new
      end
    end
  end
end