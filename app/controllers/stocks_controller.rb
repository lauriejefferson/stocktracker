class StocksController < ApplicationController
  def index
    @stocks = Stock.all
  end

  def show
    
  end

  def new
    @stock = Stock.new
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  def create
     @stock = Stock.new(stock_params)

    respond_to do |format|
      if @stock.save
        format.html { redirect_to stock_url(@stock), notice: "Stock was successfully created." }
        format.json { render :show, status: :created, location: @stock }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    
  end

  def destroy
    
  end

  private
    def set_stock
      @stock = Stock.find(params[:id])
    end
    
    def stock_params
      params.require(:stock).permit(:ticker, :user_id)
    end
end
