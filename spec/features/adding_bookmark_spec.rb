
feature "Add bookmark" do
  scenario "add bookmark" do
    visit('/bookmarks/new')
    fill_in('url', with: "https://www.ft.com")
    click_button "Submit"
    expect(page).to have_content "https://www.ft.com"
  end

  scenario 'check URL is valid' do
    visit('/bookmarks/new')
    fill_in('url', with: "not a bookmark")
    click_button "Submit"
    expect(page).to have_content "That is not a valid URL."
  end
end
