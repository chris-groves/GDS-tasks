require "rails_helper"

feature "Update task" do
  scenario "Update a task" do
    visit("/tasks/new")
    fill_in("Task", with: "Read a book")
    click_on("Submit")
    click_on("Edit")
    fill_in("Edit Task", with: "Write a book")
    click_on("Submit")

    expect(page).to have_content("Write a book")
  end

  scenario "Remove old task content" do
    visit("/tasks/new")
    fill_in("Task", with: "Read a book")
    click_on("Submit")
    click_on("Edit")
    fill_in("Edit Task", with: "Write a book")
    click_on("Submit")

    expect(page).to_not have_content("Read a book")
  end
end