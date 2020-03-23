require 'rails_helper'

describe Users::RegistrationsController do

  describe 'GET #new' do
    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :new
    end
    it "renders the :new template" do
      expect(response).to render_template :new
    end
  end

  describe "POST #create'" do

    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
    end
    
    context "有効なデータの場合" do 
      subject {
        user_params = attributes_for(:user)
        post :create, params: { user: user_params},
                                session: {
                                nickname: 'tama',
                                email: "kkk@gmail.com",
                                password: "123456a",
                                password_confirmation: "123456a",
                                last_name: "田丸",
                                first_name: "修也",
                                last_name_kana: "タマル",
                                first_name_kana: "シュウヤ",
                                birthday_year: 2018,
                                birthday_month: 12,
                                birthday_day: 31
                                }
      }
      it "200レスポンスを返すこと" do
        subject
        expect(response).to have_http_status "200"
      end

      it "電話番号確認ページにレンダーすること" do
        subject
        expect(response).to render_template :new_cellphone
      end
    end

    context "無効なデータの場合" do 
      subject {
        user_params = attributes_for(:user, nickname:"")
        post :create, params: { user: user_params},
                                session: {
                                nickname: '',
                                email: "kkk@gmail.com",
                                password: "123456a",
                                password_confirmation: "123456a",
                                last_name: "田丸",
                                first_name: "修也",
                                last_name_kana: "タマル",
                                first_name_kana: "シュウヤ",
                                birthday_year: 2018,
                                birthday_month: 12,
                                birthday_day: 31
                                }
      }
      it "200レスポンスを返すこと" do
        subject
        expect(response).to have_http_status "200"
      end

      it "newページにレンダーすること" do
        subject
        expect(response).to render_template :new
      end
    end
  end






  
end
