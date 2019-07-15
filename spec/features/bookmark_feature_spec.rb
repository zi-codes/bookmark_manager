

feature 'it has some bookmarks' do
  scenario 'check the page is working' do
    visit '/'
    expect(page).to have_content 'Hello world'
  end

  scenario 'return a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "Bookmark 1"
  end
end
