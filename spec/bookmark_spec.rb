require 'bookmark'

describe Bookmark do
  let(:bookmark) { double :bookmark }
  let(:bookmarks_list) { described_class.new }

  describe '#all' do
    it 'returns a list of bookmarks' do

      Bookmark.create('http://www.makersacademy.com')
      Bookmark.create('http://www.destroyallsoftware.com')
      Bookmark.create('http://www.google.com')

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

end
