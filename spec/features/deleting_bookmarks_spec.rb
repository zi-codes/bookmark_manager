feature "deleting bookmarks" do
  scenario "it deletes an existing bookmark" do
    visit('/')
    click_button('Add Bookmark')
    fill_in 'url', :with => 'http://www.github.com'
    fill_in 'title', :with => 'github'
    click_button('Submit')
    visit('/')
    click_button('Add Bookmark')
    fill_in 'url', :with => 'http://www.google.com'
    fill_in 'title', :with => 'google'
    click_button('Submit')
    visit('/bookmarks')
    first('.bookmark').click_button('Delete Bookmark')
    expect(current_path). to eq '/bookmarks'
    expect(page).not_to have_content 'github'
    expect(page).to have_content 'google'
  end
end
