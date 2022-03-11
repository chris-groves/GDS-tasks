require "rails_helper"

feature "Main page" do
  scenario "Heading" do
    visit("/tasks")

    expect(page).to have_content("Tasks")
  end

  scenario "View created tasks" do
    visit("/tasks/new")
    fill_in("Task", with: "Read a book")
    click_on("Submit")
    click_on("View All Tasks")

    expect(page).to have_content("Read a book")
  end
end