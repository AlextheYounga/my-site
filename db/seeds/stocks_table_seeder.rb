Stock.destroy_all
puts "Seeding Stocks"
Stock.create([
{ symbol: "TLT" },
{ symbol: "GLD" },
{ symbol: "GDX" },
{ symbol: "UUP" },
{ symbol: "MSFT" },
{ symbol: "MKC" },
{ symbol: "CHWY" },
{ symbol: "JPM" },
]);