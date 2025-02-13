require 'database_connection'

describe DatabaseConnection do
  describe '.setup' do
    it 'sets up a connection to a database through the gem PG' do
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')
      DatabaseConnection.setup('bookmark_manager_test')
    end
    it 'this connection is persistent' do
  # Grab the connection as a return value from the .setup method
      connection = DatabaseConnection.setup('bookmark_manager_test')

      expect(DatabaseConnection.connection).to eq connection
    end
  end
  describe '.query' do
    it "receives SQL query string and passes that string to the database" do
      connection = DatabaseConnection.setup('bookmark_manager_test')
      expect(connection).to receive(:exec).with("query string")
      DatabaseConnection.query("query string")
    end
  end
end
