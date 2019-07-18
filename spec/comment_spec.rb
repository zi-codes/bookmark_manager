require 'comment'

describe Comment do
  describe '.show_for' do
    it 'shows comments for a particular bookmark id' do
      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'makers')
      comment = Comment.create(text: 'nice comment', bookmark_id: bookmark.id)
      Comment.create(text: 'nice comment 2', bookmark_id: bookmark.id)
      Comment.create(text: 'nice comment 3', bookmark_id: bookmark.id)
      comments = Comment.show_for(bookmark.id)

      expect(comments.length).to eq 3
      expect(comments[0]).to be_a Comment
      expect(comments.first.text).to eq 'nice comment'
    end
  end

  describe '.create' do
    it 'creates a new comment' do
      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'makers')
      comment = Comment.create(text: 'nice comment', bookmark_id: bookmark.id)

      expect(comment).to be_a Comment
      expect(comment.text).to eq 'nice comment'
    end
  end
end
