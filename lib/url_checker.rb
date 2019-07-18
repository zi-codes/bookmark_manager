require 'uri'
module UrlChecker
  def valid_url?(urlstring)
    urlstring =~ /\A#{URI::regexp(['http', 'https'])}\z/
  end
end
