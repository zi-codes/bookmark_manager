require 'comment'

describe Comment do
  # describe '.all' do
  #   it 'returns all comments' do
  #
  #     comment = Comment.create(text: 'nice comment', bookmark_id: 1)
  #     Comment.create(text: 'nice comment 2', bookmark_id: 1)
  #     Comment.create(text: 'nice comment 3', bookmark_id: 1)
  #     comments = Comment.show_for(bookmark_id)
  #
  #     expect(comments.length).to eq 3
  #     expect(comments[0]).to be_a Comment
  #     expect(comments.first.text).to eq 'nice comment'
  #   end
  # end

  describe '.create' do
    it 'creates a new comment' do
      comment = Comment.create(text: 'nice comment', bookmark_id: 1)

      expect(comment).to be_a Comment
      expect(comment.text).to eq 'nice comment'
    end
  end
end
