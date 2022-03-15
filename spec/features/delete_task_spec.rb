require "rails_helper"

feature "Delete task" do
  scenario "Delete a task item" do
    visit("/tasks/new")
    fill_in("Task", with: "Read a book")
    click_on("Submit")
    click_on("Delete")
    expect(page).to_not have_content("Read a book")
  end
end