require 'rails_helper'

#テストの方針：ログインしているユーザが購入できるかを確認する。

RSpec.describe OrdersController, type: :controller do
  let(:user) {create(:user)} #@user = FactoryBot.create(:user)の略 参考)https://qiita.com/k-o-u/items/48881200d0be92a4e6f6
  let(:card) {create(:card, user_id: user.id)}
  
  describe 'GET #new：' do #テストの対象
    context 'ログイン時において、' do #テストする条件
      before do
        sign_in user #マクロを作成しログインのためのコードを記述。
        # 参考）https://qiita.com/Kohei_Kishimoto0214/items/e29e509b12a6eb484a42
      end
      example "商品購入確認ページ(orders#new)に遷移するか" do #期待するアウトプット
        allow(Payjp::Customer).to receive(:create).and_return(PayjpMock.prepare_customer)
        # 参考）https://qiita.com/jnchito/items/640f17e124ab263a54dd
        item = create(:item)
        get :new, params: {id: item, card: card}
        expect(response).to render_template :new
      end
    end
    context "ログアウト時において、" do
      example "new_user_session_pathにリダイレクトされるか" do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe 'POST #pay：' do
    context 'ログイン時において、' do
      before do
        login_user
      end
      example "商品購入できるか" do
        allow(Payjp::Customer).to receive(:create).and_return(PayjpMock.prepare_customer)
        allow(Payjp::Charge).to recieve(:create).and_return(PayjpMock.prepare_charge)
        post :pay, params: { id: @item.id, token: 'tok_e1d8225886e3a7211127df751c86787f' }
        @card.token = 'cus_6f9893bb50196e63968b63845093'
        expect(assigns(:card)).to eq(@card)
      end
    end
    context "ログアウト時において、" do
      example "new_user_session_pathにリダイレクトされるか" do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end



# require 'rails_helper'

# #テストの方針：ログインしているユーザが購入できるかを確認する。

# RSpec.describe OrdersController, type: :controller do
#   let(:users) { create_list(:user, 2) } #@users = FactoryBot.create(:user, 2)の略 参考)https://qiita.com/k-o-u/items/48881200d0be92a4e6f6
#   let(:category) { create(:category) }
#   let(:size) { create(:size) }
#   let(:statuses) { create_list(:status, 2) }
#   let(:item) { create(:item, user_id: users.first.id, category_id: category.id, size_id: size.id, status_id: statuses.first.id) }
#   let(:image) { create(:image) }
#   let(:card) { create(:card, user_id: users.last.id) }

#   describe 'GET #new' do #テストの対象
#     context "ログインの場合："do #テストする条件
#       before do
#         @item = item
#         @images = @item.images
#         @card = card
#         @user = user
#         login_user users.last #マクロを作成しログインのためのコードを記述。
#         # 参考）https://qiita.com/Kohei_Kishimoto0214/items/e29e509b12a6eb484a42
#         get :new, params: { id: @item[:id] }
#       end

#       example "変数@itemが正しく定義されている" do #期待するアウトプット
#         expect(assigns(:item)).to eq(@item)
#       end

#       example "変数@imagesが正しく定義されている" do
#         expect(assigns(:images)).to eq(@images)
#       end

#       example "変数@cardが正しく定義されている" do
#         expect(assigns(:card)).to eq(@card)
#       end

#       example "変数@userが正しく定義されている" do
#         expect(assigns(:user)).to eq(@user)
#       end

#       example "newテンプレートが描画されている" do
#         expect(response).to render_template :new
#       end
#     end
#     context "ログアウトの場合" do
#       example "new_user_session_pathにリダイレクト" do
#         logout_user users.last
#         expect(response).to redirect_to(new_user_session_path)
#       end
#     end
#   end

#   describe 'POST #pay' do
#     context "ログイン" do
#       before do
#         login_user users.last
#       end

#       context "アクション成功の場合：" do
#         before do
#           @item = item
#           @card = card
#           @user = user
#           allow(Payjp::Customer).to receive(:create).and_return(PayjpMock.prepare_customer)
#           allow(Payjp::Charge).to recieve(:create).and_return(PayjpMock.prepare_charge)
#           # 参考）https://qiita.com/jnchito/items/640f17e124ab263a54dd
#         end

#         example 'クレジットカード情報の表示成功' do
#           post :pay, params: { id: @item.id, token: 'tok_e1d8225886e3a7211127df751c86787f' }
#           @card.token = 'cus_6f9893bb50196e63968b63845093'
#           expect(assigns(:card)).to eq(@card)
#         end

#       end

#       context "アクション失敗の場合" do
#         before do
#           @item = item
#           @card = card
#           @user = user
#           login_user users.last
#         end

#         context "pay.jpでの顧客登録に対するレスポンスエラー" do
#           before do
#             allow(Payjp::Customer).to receive(:create).and_return(Payjp::CardError.new('', {}, 402))
#             allow(Payjp::Charge).to receive(:create).and_return(PayjpMock.prepare_charge)
#           end

#           example 'クレジットカード情報の表示失敗' do
#             post :pay, params: { id: @item.id, token: 'tok_e1d8225886e3a7211127df751c86787f' }
#             @card.token = 'cus_6f9893bb50196e63968b63845093'
#             expect(assigns(:card)).to eq(@card)
#           end

#         end

#         context "pay.jpでの支払いに対するレスポンスエラー" do
#           before do
#             allow(Payjp::Customer).to receive(:create).and_return(Payjp::CardError.new('', {}, 402))
#             allow(Payjp::Charge).to receive(:create).and_return(PayjpMock.prepare_charge)
#           end

#           example 'クレジットカード情報の表示失敗' do
#             post :pay, params: { id: @item.id, token: 'tok_e1d8225886e3a7211127df751c86787f' }
#             @card.token = 'cus_6f9893bb50196e63968b63845093'
#             expect(assigns(:card)).to eq(@card)
#           end
#         end
#       end
#     end

#     context "ログアウトの場合" do
#       example "new_user_session_pathにリダイレクト" do
#         logout_user users.last
#         expect(response).to redirect_to(new_user_session_path)
#       end
#     end
#   end
# end
