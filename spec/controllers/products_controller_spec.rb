require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe 'Get #edit' do
    context "current_user.id==sailer_user.id" do
      let(:user) {
        FactoryBot.create(:user, id:1)
      }

      before do
        sign_in user
      end

      it "assigns the requested item to @item" do
        item = create(:item)
        get :edit, params: { id: item }
        expect(assigns(:item)).to eq item
      end

      it "renders the :edit template" do
        item = create(:item)
        get :edit, params: { id: item }
        expect(response).to render_template :edit
      end
    end

    context "current_user.id!=sailer_user.id" do
      let(:user) {
        FactoryBot.create(:user, id:2)
      }

      before do
        sign_in user
      end

      it "assigns the requested item to @item" do
        item = create(:item)
        get :edit, params: { id: item }
        expect(assigns(:item)).to eq item
      end

      it "renders the :edit template" do
        item = create(:item)
        get :edit, params: { id: item }
        expect(response).to redirect_to (root_path)
      end
    end
  end

  describe 'Patch #update' do
    context "can update" do
      let(:user) {
        FactoryBot.create(:user, id:1)
      }

        before do
          sign_in user
          @item = create(:item)
          @item_params = @item.attributes
        end

        it 'item can be updated' do
          patch :update, params: {id: @item,item: @item_params}
          expect(assigns(:item)).to eq(@item)
        end

        it "changes @item's attributes" do
          @item_params["name"] = "アップデート"
          patch :update, params: {id: @item,item: @item_params}
          @item.reload
          expect(@item.name).to eq("アップデート")
        end

        it "redirects to root_path" do
          patch :update, params: {id: @item,item: @item_params}
          expect(response).to redirect_to(root_path)
        end
      end

      context "can't be updated" do
        let(:user) {
          FactoryBot.create(:user, id:1)
        }
  
          before do
            sign_in user
            @item = create(:item, saler_user_id: 2)
            @item_params = @item.attributes
          end

        it 'item cant be updated' do
          @before_name = @item_params["name"]
          @item_params["name"] = "アップデート"
          patch :update, params: {id: @item,item: @item_params}
          @item.reload
          expect(@item.name).to eq(@before_name)
        end

        it "redirects to root_path" do
          patch :update, params: {id: @item.id, item: @item_params}
          expect(response).to redirect_to(root_path)
        end
      end


  end


end