require 'manager'

describe Manager do
  let(:bookmark) { double :bookmark }
  let(:bookmarks_list) { described_class.new }

  describe '#list' do
    it 'should return a list of bookmarks' do
      bookmarks_list.add(bookmark)
      expect(bookmarks_list.list).to include(bookmark)
    end
  end

  describe '#add' do
    it 'should add a bookmark to the list' do
      bookmarks_list.add(bookmark)
      expect(bookmarks_list.list).to include(bookmark)
    end
  end
  
end
