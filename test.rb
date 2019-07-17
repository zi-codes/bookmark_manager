class Test

  attr_reader :bookmark

  def test
    @bookmark = 5
  end

end

test = Test.new

p test.bookmark
