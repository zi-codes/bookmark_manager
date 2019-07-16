require 'bookmark'

describe Bookmark do
  let(:bookmark) { double :bookmark }
  let(:bookmarks_list) { described_class.new }

  describe '#all' do
    it 'should return a list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

end
