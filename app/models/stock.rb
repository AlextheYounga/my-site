class Stock < ActiveRecord::Base
  
  # has_many :user_stocks
  # has_many :users, through: :user_stocks
  
  
   Stock.all.each 
      stock = StockQuote::Stock.quote(symbol)
      new(company_name: stock.company_name,
          symbol: stock.symbol,
          latest_price: stock.latest_price,
          latest_time: stock.latest_time)

   



end
