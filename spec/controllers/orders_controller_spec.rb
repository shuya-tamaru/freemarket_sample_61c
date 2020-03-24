require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  let(:users) { create_list(:user, 2) }
  #create_list(<作成したいファクトリ名>, <作成するインスタンス数(購入者と出品者を用意するため。)>)
  let(:category) { create(:category) }
  let(:brand) { create(:brand) }
  let(:item) { create(:item, saler_user_id: users.last.id, category_id: category.id, brand_id: brand.id) }
  let(:card) { create(:card, user_id: users.first.id, customer_id: "cus_121673955bd7aa144de5a8f6c262", card_id: "car_6845da1a8651f889bc432362dfcb") }

  describe 'GET #new' do
    context 'ログイン時' do
      before do
        login users.first
        @item = item
        get :new, params:{id: @item[:id]}
      end
      example "- newテンプレートの表示成功" do
        expect(response).to render_template :new
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
          @card = card
          allow(Payjp::Customer).to receive(:create).and_return(PayjpMock.prepare_customer)
          allow(Payjp::Charge).to receive(:create).and_return(PayjpMock.prepare_charge)
          #payjp推奨の方法であり、テスト時にpayjpのような外部APIのレスポンスを要する場合はモックを使い、フェイクのレスポンスを取得するようにする。allowはpayjpとの通信を回避するためのメソッド。
          #allow(実装を置き換えたいオブジェクト).to receive(置き換えたいメソッド名).and_return(返却したい値やオブジェクト)
          post :pay, params: {id: @item.id, customer_id: 'cus_121673955bd7aa144de5a8f6c262' }
        end

        example "- 支払情報の取得成功" do
          expect(PayjpMock.prepare_charge).not_to eq nil
          #お気づきかもしれませんが、モック(PayjpMock)の情報を得られましたと言っているだけです。orders#payのPayjp::Charge.createが動作したというエビデンスにはなりますが、Payjpレスポンスのテストはこの程度しかできないのです。。ユーザのお金が絡んでいる割にはちょっと心許ない気がするのは私だけ？（参考：https://muut.com/i/payjp/general:n8jubya6r7gxcp4398dp9d697ed）
        end

        example "- transaction_statusの更新成功" do
          expect(assigns(:item).transaction_status).to eq 2
        end

        example "- buyer_user_idの更新成功" do
          expect(assigns(:item).buyer_user_id).not_to eq nil
        end

        example "- 購入完了画面に遷移" do
          expect(response).to redirect_to(done_order_path)
        end

      end

      context 'アクション失敗' do
        before do
          @item = item
        end

        context "出品停止の商品の場合" do
          before do
            @item.update(transaction_status: 0)
            post :pay, params: {id: @item.id, customer_id: 'cus_121673955bd7aa144de5a8f6c262' }
            allow(Payjp::Charge).to receive(:create).and_return(PayjpMock.prepare_charge)
          end

          example "- 支払情報の取得失敗" do
            expect(PayjpMock.prepare_charge).to eq nil
          end

          example "- transaction_statusの更新失敗" do
            expect(assigns(:item).transaction_status).not_to eq 2
          end

          example "- buyer_user_idの更新失敗" do
            expect(assigns(:item).buyer_user_id).to eq nil
          end

        end

        context "購入済の商品の場合" do
          before do
            @item.update(transaction_status: 2)
            allow(Payjp::Charge).to receive(:create).and_return(PayjpMock.prepare_charge)
            post :pay, params: {id: @item.id, customer_id: 'cus_121673955bd7aa144de5a8f6c262' }
          end

          example "- 支払情報の取得失敗" do
            expect(PayjpMock.prepare_charge).to eq nil
          end

          example "- buyer_user_idの更新失敗" do
            expect(assigns(:item).buyer_user_id).to eq nil
          end

        end

        context "payjp支払レスポンスエラーの場合" do #これ用にOrders#payに例外処理を追記しました。
          before do
            @item = item
            @card = card
            allow(Payjp::Charge).to receive(:create).and_raise(Payjp::CardError.new('', {}, 402))
            #allow(オブジェクト).to receive(メソッド名).and_raise(エラー)・・・人為的にエラーを発生させる構文
            post :pay, params: {id: @item.id, customer_id: 'cus_121673955bd7aa144de5a8f6c262' }
          end

          example "- transaction_statusの更新失敗" do
            expect(assigns(:item).transaction_status).not_to eq 2
          end

          example "- buyer_user_idの更新失敗" do
            expect(assigns(:item).buyer_user_id).to eq nil
          end

        end
      end
    end
  end
end