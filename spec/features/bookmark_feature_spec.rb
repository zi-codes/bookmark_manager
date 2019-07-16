feature 'it has some bookmarks' do
  scenario 'check the page is working' do
    visit '/'
    expect(page).to have_content 'Hello world'
  end

  
end
