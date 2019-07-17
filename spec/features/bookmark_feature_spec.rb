feature 'it has some bookmarks' do
  scenario 'check the page is working' do
    visit '/'
    expect(page).to have_content 'Welcome to your Bookmark Manager!'
    expect(page.status_code).to eq(200)
  end


end
