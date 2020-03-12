require 'rails_helper'

describe OrdersController do
  let(:user) { create(:user) }
  describe 'GET #new' do
    context 'when user login' do
      before do
        login user
      end
        it "renders the :new template" do
        get :new, params:{item_id:1}
        expect(response).to render_template :new
      end
    end
  end
end