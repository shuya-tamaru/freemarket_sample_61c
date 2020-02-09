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
    it 'リクエストは200 OKとなること' do
      expect(response.status).to eq 200
    end
    it '@userに新しいユーザーを割り当てること' do
      expect(assigns(:user)).to be_a_new(User)
    end
  end
    # describe 'GET #create' d
    # end
end
