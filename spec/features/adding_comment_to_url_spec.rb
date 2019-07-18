# feature "adding a comment" do
#   scenario "to an existing bookmark" do
#     visit('/')
#     click_button('Add Bookmark')
#     fill_in 'url', :with => 'http://www.github.com'
#     fill_in 'title', :with => 'github'
#     click_button('Submit')
#     click_button('Add Comment')
#     fill_in 'comment', :with => 'this is a great website'
#     click_button('Submit')
#     click_button('Add Comment')
#     fill_in 'comment', :with => 'but also kind of bad'
#     click_button('Submit')
#     click_button('View Comments')
#     expect(page).to have_content 'this is a great website'
#     expect(page).to have_content 'but also kind of bad'
#   end
# end
