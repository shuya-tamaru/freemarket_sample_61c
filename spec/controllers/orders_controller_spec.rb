require 'rails_helper'

RSpec.describe PurchaseController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #pay" do
    it "returns http success" do
      get :pay
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #done" do
    it "returns http success" do
      get :done
      expect(response).to have_http_status(:success)
    end
  end

end
