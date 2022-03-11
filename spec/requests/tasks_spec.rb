require "rails_helper"

RSpec.describe "Tasks", type: :request do
  describe "GET /tasks" do
    it "returns http success" do
      get "/tasks"
      expect(response).to have_http_status(:success)
    end

    it "renders the index page" do
      get "/tasks"
      expect(response.body).to include("Tasks")
    end
  end
end
