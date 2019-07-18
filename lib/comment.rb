require_relative 'database_connection'


class Comment
  attr_reader :id, :text, :bookmark_id
  def initialize(id:, text:, bookmark_id:)
    @id = id
    @text= text
    @bookmark_id= bookmark_id
  end

  def self.exec(sql)
    DatabaseConnection.connection.exec(sql)
  end

  def self.create(text:, bookmark_id:)
    result = self.exec("INSERT INTO comments (text, bookmark_id) VALUES ('#{text}', '#{bookmark_id}') RETURNING id, text, bookmark_id;")
    Comment.new(id: result[0]['id'], text: result[0]['text'], bookmark_id: result[0]['bookmark_id'])
  end

  def self.show_for(bookmark_id)
    result = self.exec("SELECT * FROM comments WHERE bookmark_id = #{bookmark_id};")
    result.map do |comment|
      Comment.new(id: comment['id'], text: comment['text'], bookmark_id: comment['bookmark_id'])
    end
  end

end
