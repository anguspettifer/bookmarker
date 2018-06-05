feature 'viewing bookmarks' do
    scenario 'user can see bookmarks' do
        Bookmark.add(url: "http://makersacademy.com")

        visit('/bookmarks')
        expect(page).to have_content('http://makersacademy.com')
    end
end
