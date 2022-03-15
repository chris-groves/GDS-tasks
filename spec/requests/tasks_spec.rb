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

  describe "GET /tasks/new" do
    it "returns http success" do
      get "/tasks/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /tasks" do
    let(:create_new_task) { post tasks_path, params: { task: { description: "Read" } } }

    it "creates a new task" do
      expect { create_new_task }.to change(Task, :count).by(1)
    end
  end

  describe "DELETE /tasks/:id" do
    let(:task) { Task.create!(description: "Read") }
    let(:delete_task) { delete "/tasks/#{task.id}" }

    it "returns http success" do
      task
      delete "/tasks/#{task.id}"
      expect(response).to have_http_status(:redirect)
    end

    it "creates a new task" do
      task
      expect { delete_task }.to change(Task, :count).by(-1)
    end
  end

  describe "GET /tasks/:id/edit" do
    let(:task) { Task.create!(description: "Read") }

    it "returns http success" do
      task
      get "/tasks/#{task.id}/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH /tasks/:id" do
    let(:task) { Task.create!(description: "Read") }
    let(:update_task) { post tasks_path, params: { task: { description: "Read a book" } } }

    it "returns http success" do
      task
      update_task
      expect(response).to have_http_status(:redirect)
    end
  end
end
