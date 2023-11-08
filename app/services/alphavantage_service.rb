class AlphavantageService
  attr_accessor :client
  def initialize(api_key:)
    @api_key = api_key
  end

  def client
    client = Alphavantage::Client.new key: @api_key
  end

  def stocks_found(keywords)
    stocks_found = client.search keywords: keywords
  end
end
