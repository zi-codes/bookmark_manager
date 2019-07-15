class Manager

def initialize
  @bookmarks = ["Bookmark 1"]

end

def list
  @bookmarks
end

def add(bookmark)
  @bookmarks << bookmark
end

end
