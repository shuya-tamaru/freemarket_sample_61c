require "rails_helper"

RSpec.describe "ItemsController", type: :request do

  
  describe "GET new_item_path" do
    subject { get new_item_path }

    specify {
      subject
      expect(response).to have_http_status 200
    }
  end

  describe "GET create_item_path" do
    subject { get create_item_path }

    specify {
      subject
      expect(response).to have_http_status 200
    }
  end

  describe "POST create_item_path" do
    
    context 'with valid params' do
      subject { post create_item_path, params: { item: { name: "テストの商品" } } }
      specify {
        expect(subject).to eq 204
      }
    end
  end
end
