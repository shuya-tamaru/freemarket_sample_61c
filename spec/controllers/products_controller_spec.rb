require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe 'Get #edit' do
    before do
      @item = create(:item)
      get 'edit', permalink: @item.permalink
    end
    it 'リクエストは200 OKとなること' do
      expect(response.status).to eq 200
    end
    it '@userに要求されたユーザーを割り当てること' do
      expect(assigns(:item)).to eq @item
    end
    it ':editテンプレートを表示すること' do
      expect(response).to render_template :edit
    end
  end



end
