feature "adding bookmarks" do
  scenario "it adds a bookmark" do
    visit('/')
    click_button('Add Bookmark')
    fill_in 'url', :with => 'http://www.github.com'
    click_button('Submit')
    expect(page).to have_content 'http://www.github.com'
  end
end
