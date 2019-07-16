require 'pg'

class Bookmark

  def self.connection
    if ENV['ENVIRONMENT'] == 'test'
      PG.connect(dbname: 'bookmark_manager_test')
    else
      PG.connect(dbname: 'bookmark_manager')
    end
  end

  def self.create(url_to_save, url_title)
    self.connection.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url_to_save}', '#{url_title}')")
  end

  def self.all
    result = self.connection.exec("SELECT * FROM bookmarks;")
    result
  end

  ## non-refactored version below

  # def self.create(url_to_save)
  #   if ENV['ENVIRONMENT'] == 'test'
  #     connection = PG.connect(dbname: 'bookmark_manager_test')
  #   else
  #     connection = PG.connect(dbname: 'bookmark_manager')
  #   end
  #   connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url_to_save}')")
  # end
  #
  # def self.all
  #   if ENV['ENVIRONMENT'] == 'test'
  #     connection = PG.connect(dbname: 'bookmark_manager_test')
  #   else
  #     connection = PG.connect(dbname: 'bookmark_manager')
  #   end
  #
  #     result = connection.exec("SELECT * FROM bookmarks;")
  #     result.map { |bookmark| bookmark['url'] }
  # end

end
