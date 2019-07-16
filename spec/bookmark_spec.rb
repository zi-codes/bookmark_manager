require 'bookmark'

describe Bookmark do
  let(:bookmark) { double :bookmark }
  let(:bookmarks_list) { described_class.new }

  describe '#all' do
    it 'returns a list of bookmarks' do

      Bookmark.create('http://www.makersacademy.com', 'makers')
      Bookmark.create('http://www.destroyallsoftware.com', 'destroy')
      Bookmark.create('http://www.google.com', 'google')

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

end
