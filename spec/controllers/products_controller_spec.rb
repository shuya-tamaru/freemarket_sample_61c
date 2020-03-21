require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  let(:users) { create_list(:user, 2) }

  describe "GET #new with user logged_in" do
    it "redirect_to new_product_path" do
      login users.first
      get :new
      expect(response).to have_http_status "200"
    end
  end

  describe "GET #new without user logged_in" do
    it "redirect_to new_user_session_path" do
      get :new
      # expect(response).to have_http_status "302"
      expect(subject).to redirect_to(new_user_session_path)
    end
  end

  describe "GET #new without user logged_in" do
    it "returns 302" do
      get :new
      expect(response).to have_http_status "302"
    end
  end

end
