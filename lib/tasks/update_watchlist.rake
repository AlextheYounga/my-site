
desc "This task is called by the Heroku scheduler add-on and updates the watchlist"
task :update_watchlist => :environment do
puts "Updating watchlist..."
client = IEX::Api::Client.new(publishable_token: 'pk_6c06446591c34f6c8fd673dd8b88c779')

    Stock.all.each do |stock|
    quote = client.price("#{stock.symbol}")
    company = client.company("#{stock.symbol}")
    stat = client.key_stats("#{stock.symbol}")

        Stock.where(symbol: "#{stock.symbol}").update(
        company_name: company.company_name,
        latest_price: quote,
        ytd_change_percent: (stat.ytd_change_percent * 100),
        industry: company.industry
        )
        puts "#{stock.symbol} info collected" 
    end
    puts "done."
end
  



