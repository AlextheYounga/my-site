Country.destroy_all
puts "Seeding Countries"
Country.create([
    { name: "brunei", print_name: "Brunei" },
    { name: "united-arab-emirates", print_name: "United Arab Emirates" },
    { name: "kuwait", print_name: "Kuwait" },
    { name: "hong-kong", print_name: "Hong Kong" },
    { name: "russia", print_name: "Russia" },
])