require "rails_helper"

feature "Edit task" do
  scenario "Edit a task" do
    visit("/tasks/new")
    fill_in("Task", with: "Read a book")
    click_on("Submit")
    click_on("Edit")
    expect(page).to have_content("Edit Task")
  end
end