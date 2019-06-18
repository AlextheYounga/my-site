class Stock < ActiveRecord::Base
  client = IEX::Api::Client.new(publishable_token: 'pk_6c06446591c34f6c8fd673dd8b88c779')

  Stock.all.each do |stock|
  quote = client.price("#{stock.symbol}")
  company = client.company("#{stock.symbol}")

      Stock.where(symbol: "#{stock.symbol}").update(
        company_name: company.company_name,
        latest_price: quote,
      )
  end
end
