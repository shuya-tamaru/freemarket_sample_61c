require 'rails_helper'
require 'orders_controller'

RSpec.describe OrdersController, type: :controller do
  let(:users) { create_list(:user, 2) }
  #create_list(<作成したいファクトリ名>, <作成するインスタンス数(購入者と出品者を用意するため。)>)
  let(:category) { create(:category) }
  let(:brand) { create(:brand) }
  let(:item) { create(:item, saler_user_id: users.last.id, category_id: category.id, brand_id: brand.id) }
  let(:image) { create(:image, item_id: item.id) }
  let(:address) { create(:address, user_id: users.first.id) }
  let(:card) { create(:card, user_id: users.first.id) }

  describe 'GET #new' do
    context 'ログイン時' do
      before do
        login users.first
        @item = item
        @images = @item.images
        @address = address
        get :new, params:{id: @item[:id]}
      end
      example "- newテンプレートの表示成功" do
        allow(Payjp::Customer).to receive(:new).and_return(PayjpMock.prepare_customer) #payjp推奨の方法であり、テスト時にpayjpのような外部APIのレスポンスを要する場合はモックを使い、フェイクのレスポンスを取得するようにする。allowはpayjpとの通信を回避するためのメソッド。
        expect(response).to render_template :new
      end

      example "- 変数@itemが正しく定義されている" do
        expect(assigns(:item)).to eq(@item)
      end

      # example "- 変数@imagesが正しく定義されている" do
      #   expect(assigns(:image)).to eq(@images)
      # end

      example "- 変数@cardが正しく定義されている" do
        expect(assigns(:card)).to eq(@card)
      end

      example "- 変数@addressが正しく定義されている" do
        expect(assigns(:address)).to eq(@address)
      end
    end

    context 'ログアウト時' do
      example "- new_user_session_pathにリダイレクト" do
        get :new, params: {id: item[:id]}
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe 'POST #pay' do
    context 'ログイン時' do
      before do
        login users.first
      end

      context 'アクション成功' do
        before do
          @item = item
          # @card = card
          @address = address
          allow(Payjp::Customer).to receive(:create).and_return(PayjpMock.prepare_customer)
          allow(Payjp::Charge).to receive(:create).and_return(PayjpMock.prepare_charge)
          # get :new, params:{id: @item[:id]}
        end

        example "- 支払い金額の取得成功" do
          post :pay, params: { id: @item.id }
          @item.price = 20000
          expect(assigns(:item)).to eq(@item)
          # expect{ post :create, params:}
        end

        example "- カード顧客IDの取得成功" do
          post :pay, params: { id: @card.customer_id }
          @card.customer_id = 'cus_121673955bd7aa144de5a8f6c262'
          expect(assigns(:card)).to eq(@card)
        end

        example "- transaction_statusの更新成功" do
          post :pay, params: { id: @item.id }
          @card.cutomer_id = 'cus_121673955bd7aa144de5a8f6c262'
          @item.status_id = users.first.id
          expect(assigns(:item)).to eq(@item)
        end

        example "- buyer_user_idの更新成功" do
          post :pay, params: { id: @item.id }
          @card.cutomer_id = 'cus_121673955bd7aa144de5a8f6c262'
          @item.buyer_user_id = 2
          expect(assigns(:item)).to eq(@item)
        end

        example "- 購入完了画面に遷移" do
          post :pay, params: {id: @item.id }
          expect(response).to redirect_to(done_order_path)
        end

      end

      context 'アクション失敗' do
        before do
          login users.first
          @item = item
          @address = address
          get :new, params:{id: @item[:id]}
        end

        context "販売中の商品以外の場合" do
          before do
          end

          example "- 支払い金額の取得失敗" do

          end

          example "- カード顧客IDの取得失敗" do

          end

          example "- transaction_statusの更新失敗" do

          end

          example "- buyer_user_idの更新失敗" do

          end

          example "- root画面に遷移" do

          end
        end

        context "payjp支払レスポンスエラーの場合" do
          before do
          end

          example "- 支払い金額の取得失敗" do

          end

          example "- カード顧客IDの取得失敗" do

          end

          example "- transaction_statusの更新失敗" do

          end

          example "- buyer_user_idの更新失敗" do

          end

          example "- root画面に遷移" do

          end
        end
      end
    end

    context "ログアウト時" do
      example "- new_user_session_pathにリダイレクト" do

      end
    end
  end
end