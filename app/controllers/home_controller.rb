class HomeController < ApplicationController

  def index
    if params[:ticker].present?
      client = AlphavantageService.new(api_key: ENV["ALPHAVANTAGE_API_KEY"])
      @stocks = client.stocks_found(params[:ticker])
      @stocks
    else
      @nothing = "Hey! You forgot to enter a symbol"
    end
  end

  def about

  end

end
