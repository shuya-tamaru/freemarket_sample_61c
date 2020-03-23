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

  describe "POST #create_cellphone" do

    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @user = attributes_for(:user)
      user_params = attributes_for(:user)
      session["devise.regist_data"] = {user: @user}
      session[:nickname] = user_params[:nickname]
      session[:email] = user_params[:email]
      session[:password] = user_params[:password_confirmation]
      session[:password_confirmation] = user_params[:password_confirmation]
      session[:last_name] = user_params[:lastname]
      session[:first_name] = user_params[:firstname]
      session[:last_name_kana] = user_params[:lastname_kana]
      session[:first_name_kana] = user_params[:firstname_kana]
      session[:birthday_year] = user_params[:birthday_year]
      session[:birthday_month] = user_params[:birthday_month]
      session[:birthday_day] = user_params[:birthday_day]
    end

    it "200レスポンスを返すこと" do
      subject
      expect(response).to have_http_status "200"
    end

    context "有効なデータの場合" do
      subject {
        cellphone_params = attributes_for(:cellphone)
        post :create_cellphone, params: { cellphone: cellphone_params },
                                # session: {
                                #   nickname: 'tama',
                                #   email: "kkk@gmail.com",
                                #   password: "123456a",
                                #   password_confirmation: "123456a",
                                #   last_name: "田丸",
                                #   first_name: "修也",
                                #   last_name_kana: "タマル",
                                #   first_name_kana: "シュウヤ",
                                #   birthday_year: 2018,
                                #   birthday_month: 12,
                                #   birthday_day: 31
                                # },
                                session: {
                                  number: "08011111111"
                                }

      }

      it "200レスポオンスを返すこと" do
        subject
        expect(response).to have_http_status "200"
      end

      it "アドレス確認ページにレンダーすること" do
        subject
        expect(response).to render_template :new_address
      end
    end

    context "無効なデータの場合" do
      subject {
        cellphone_params = attributes_for(:cellphone, number: "")
        post :create_cellphone, params: { cellphone: cellphone_params },
                                # session: {
                                #   nickname: 'tama',
                                #   email: "kkk@gmail.com",
                                #   password: "123456a",
                                #   password_confirmation: "123456a",
                                #   last_name: "田丸",
                                #   first_name: "修也",
                                #   last_name_kana: "タマル",
                                #   first_name_kana: "シュウヤ",
                                #   birthday_year: 2018,
                                #   birthday_month: 12,
                                #   birthday_day: 31
                                # },
                                session: {
                                  number: ""
                                }

      }

      it "200レスポオンスを返すこと" do
        subject
        expect(response).to have_http_status "200"
      end

      it "アドレス確認ページにレンダーすること" do
        subject
        expect(response).to render_template :new_cellphone
      end
    end
  end






  
end
