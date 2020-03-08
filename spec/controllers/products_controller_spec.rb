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
      # params = { images_attributes: [ FactoryBot.attributes_for( :image ) ] }
      # item =FactoryBot.attributes_for( :item ).merge( params )
      # @item = build(:item, id:"1")
      # @item = FactoryBot.create( :item_with_image )

      # @image = FactoryBot.create(:image)
      # @item = FactoryBot.create(:item, images_attributes: @image)
    end
    it "assigns the requested item to @item" do
      item = create(:item_with_image)
      get :edit, params: { id: item }
      expect(assigns(:item)).to eq item
    end
    # it 'リクエストは200 OKとなること' do
    #   get 'edit', params: { id: 1 }
    #   expect(response.status).to eq 200
    # end
    # it '@itemに要求されたユーザーを割り当てること' do
    #   expect(assigns(:item)).to eq @item
    # end
    # it ':editテンプレートを表示すること' do
    #   expect(response).to render_template :edit
    # end
  end
end