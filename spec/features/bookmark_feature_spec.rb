feature 'it has some bookmarks' do
  scenario 'retrieve a list of bookmarks' do
    visit '/'
    expect(page).to have_content 'Hello world'
  end
end
