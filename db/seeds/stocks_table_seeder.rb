Stock.destroy_all
puts "Seeding Stocks"
Stock.create([
{ symbol: "TLT", position: "Long" },
{ symbol: "GLD", position: "Long" },
{ symbol: "GDX", position: "Long" },
{ symbol: "MSFT", position: "Long" },
{ symbol: "MKC", position: "Long" },
{ symbol: "CHWY", position: "Long" },
{ symbol: "JPM", position: "Long" },
{ symbol: "TSLA", position: "Short" },
{ symbol: "CVNA", position: "Short" },
]);