require 'rails_helper'

RSpec.describe FollowManagementController, type: :controller do

  describe "GET #follow" do
    it "returns http success" do
      get :follow
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #stop_follow" do
    it "returns http success" do
      get :stop_follow
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #block" do
    it "returns http success" do
      get :block
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #stop_block" do
    it "returns http success" do
      get :stop_block
      expect(response).to have_http_status(:success)
    end
  end

end
