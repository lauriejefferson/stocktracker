require_relative 'excon_service'

module TelescopeStocks
    class Search
        def self.get_stock(ticker)
            ExconService::request_api(
                "https://telescope-stocks-options-price-charts.p.rapidapi.com/stocks/#{ticker}?modules=price"
            )
        end
    end
end