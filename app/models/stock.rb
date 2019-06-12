class Stock < ActiveRecord::Base

  Stock.all.each do |stock|
  company = StockQuote::Stock.quote("#{stock.symbol}")

      Stock.where(symbol: "#{stock.symbol}").update(
        company_name: company.try(:company_name),
        latest_price: company.try(:latest_price),
      )
  end
end
