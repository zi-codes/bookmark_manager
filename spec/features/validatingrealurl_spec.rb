feature "checking valid url" do
  scenario "raises an error message if invalid url is submitted in add url" do
    visit('/')
    click_button('Add Bookmark')
    fill_in 'url', :with => 'w,github.com'
    fill_in 'title', :with => 'github'
    click_button('Submit')
    expect(page).to have_content('You have submitted an invalid url')
  end
end
feature "checking valid url" do
  scenario "raises an error message if invalid url is submitted in update url" do
    visit('/')
    click_button('Add Bookmark')
    fill_in 'url', :with => 'http://www.github.co.uk'
    fill_in 'title', :with => 'github'
    click_button('Submit')
    click_button('Edit')
    fill_in 'url', :with => 'httuyfuyp://www,github.com'
    fill_in 'title', :with => 'github'
    click_button('Submit')
    expect(page).to have_content('You have submitted an invalid url')
  end
end
