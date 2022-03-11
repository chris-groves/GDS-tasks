require "rails_helper"

feature "New task" do
  scenario "add a new task item" do
    visit("/tasks/new")
    fill_in("Task", with: "Read a book")
    click_on("Submit")

    expect(page).to have_content("Read a book")
  end
end