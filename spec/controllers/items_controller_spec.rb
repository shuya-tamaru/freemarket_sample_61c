require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  describe "#index" do
    
    let!(:category1) { Category.create(id: 1, name: 'レディース', ancestry: nil) }
    let!(:category200) { Category.create(id: 200, name: 'メンズ', ancestry: nil) }
    let!(:category893) { Category.create(id: 893, name: '家電・スマホ・カメラ', ancestry: nil) }
    let!(:category680) { Category.create(id: 680, name: 'おもちゃ・ホビー・グッズ', ancestry: nil) }

    let!(:brand1) { Brand.create(id: 1, name: 'シャネル') }
    let!(:brand3) { Brand.create(id: 3, name: 'ルイヴィトン') }
    let!(:brand4) { Brand.create(id: 4, name: 'シュプリーム') }
    let!(:brand2) { Brand.create(id: 2, name: 'ナイキ') }

    before do
      @user = FactoryBot.create(:user)
    end

    it "ログインせずにindexアクションに行くとHTTPレスポンスコード200が返る" do
      get :index
      expect(response).to have_http_status "200"
    end

    it "ログインしてindexアクションに言ってもHTTPレスポンスコード200が返る" do
      login @user
      get :index
      expect(response).to have_http_status "200"
    end
  end
end
