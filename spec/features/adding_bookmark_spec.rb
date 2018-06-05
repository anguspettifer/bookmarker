
feature "Add bookmark" do
  scenario "add bookmark" do
    visit('/bookmarks/new')
    fill_in('url', with: "https://www.testbookmark.com")
    click_button "Submit"
    expect(page).to have_content "https://www.testbookmark.com"
  end
end
