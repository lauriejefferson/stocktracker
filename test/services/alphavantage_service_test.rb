require "test_helper"

class AlphavantageServiceTest < ActiveSupport::TestCase
  test "create a client" do
    api_key = ENV["ALPHAVANTAGE_API_KEY"]
    keywords = "MSFT"
    client = AlphavantageService.new(api_key: api_key)
    stocks_found = client.stocks_found(keywords)
    puts stocks_found.output
    # puts stocks_found.stocks[0].symbol
    # puts stocks_found.stocks[0].name
    # puts stocks_found.stocks[0].type
    # puts stocks_found.stocks[0].region
    # puts stocks_found.stocks[0].marketopen
    # puts stocks_found.stocks[0].marketclose
    # puts stocks_found.stocks[0].timezone
    # puts stocks_found.stocks[0].currency
    # puts stocks_found.stocks[0].matchscore
  end
end
