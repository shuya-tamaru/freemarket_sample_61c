require 'rails_helper'

#テストの方針：ログインしているユーザが購入できるかを確認する。

RSpec.describe OrdersController, type: :controller do
  let(:users) { create_list(:user, 2) } #@users = FactoryBot.create(:user, 2)の略 参考)https://qiita.com/k-o-u/items/48881200d0be92a4e6f6
  let(:category) { create(:category) }
  let(:size) { create(:size) }
  let(:statuses) { create_list(:status, 2) }
  let(:item) { create(:item, user_id: users.first.id, category_id: category.id, size_id: size.id, status_id: statuses.first.id) }
  let(:image) { create(:image) }
  let(:card) { create(:card, user_id: users.last.id) }

  describe 'GET #new' do #テストの対象
    context "ログインの場合："do #特定の条件
      before do
        @item = item
        @images = @item.images
        @card = card
        @user = user
        login_user users.last #マクロを作成しログインのためのコードを記述。
        # 参考）https://qiita.com/Kohei_Kishimoto0214/items/e29e509b12a6eb484a42
        get :new, params: { id: @item[:id] }
      end

      example "変数@itemが正しく定義されている" do #期待するアウトプット
        expect(assigns(:item)).to eq(@item)
      end

      example "変数@imagesが正しく定義されている" do
        expect(assigns(:images)).to eq(@images)
      end

      example "変数@cardが正しく定義されている" do
        expect(assigns(:card)).to eq(@card)
      end

      example "変数@userが正しく定義されている" do
        expect(assigns(:user)).to eq(@user)
      end

      example "newテンプレートが描画されている" do
        expect(response).to render_template :new
      end
    end
    context "ログアウトの場合" do
      example "new_user_session_pathにリダイレクト" do #こうなるようにサンプルコードも編集する！！
        logout_user users.last
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe 'POST #pay' do
    context "ログイン" do
      before do
        login_user user.last
      end

      context "アクション成功の場合：" do
        before do
          @item = item
          @card = card
          @user = user
          allow(Payjp::Customer).to receive(:create).and_return(PayjpMock.prepare_customer)
          allow(Payjp::Charge).to recieve(:create).and_return(PayjpMock.prepare_charge)
          # 参考）https://qiita.com/jnchito/items/640f17e124ab263a54dd
        end

        example 'クレジットカード情報の表示成功' do
          post :pay, params: { id: @item.id, payjp-token: 'tok_76e202b409f3da51a0706605ac81' }
          @card.payjp-token = 'cus_121673955bd7aa144de5a8f6c262'
          expect(assigns(:card)).to eq(@card)
        end

        example '取引相手の保存成功' do
        end

        example 'オーダーの保存成功' do
        end

        example '商品のステータス更新成功' do
        end

        example 'トップページにリダイレクト' do
          post :pay, params: { id: @item.id, payjp-token: 'tok_76e202b409f3da51a0706605ac81' }
          expect(response).to redirect_to(root_path)
        end
      end

      context "アクション失敗の場合" do
        before do
          @item = item
          @card = card
          @user = user
        end

        context "アイテムが販売中以外の場合" do
          before do

          end

          example 'クレジットカード情報の表示失敗' do
          end

          example '取引相手の保存失敗' do
          end
  
          example 'オーダーの保存失敗' do
          end
  
          example '商品のステータス更新失敗' do
          end
  
          example 'トップページにリダイレクト失敗' do
          end
        end

        context "pay.jpでの顧客登録に対するレスポンスエラー" do
          before do

          end

          example 'クレジットカード情報の表示失敗' do
          end

          example '取引相手の保存失敗' do
          end
  
          example 'オーダーの保存失敗' do
          end
  
          example '商品のステータス更新失敗' do
          end
  
          example 'トップページにリダイレクト失敗' do
          end
        end

        context "pay.jpでの支払いに対するレスポンスエラー" do
          before do

          end

          example 'クレジットカード情報の表示失敗' do
          end

          example '取引相手の保存失敗' do
          end
  
          example 'オーダーの保存失敗' do
          end
  
          example '商品のステータス更新失敗' do
          end
  
          example 'トップページにリダイレクト失敗' do
          end
        end
      end
    end

    context "ログアウトの場合" do
      example "new_user_session_pathにリダイレクト" do #こうなるようにサンプルコードも編集する！！
        logout_user users.last
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
