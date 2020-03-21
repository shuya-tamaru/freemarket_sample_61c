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
end
