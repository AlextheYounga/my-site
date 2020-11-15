table_name = "book_categories"
ActiveRecord::Base.connection.execute("Delete from #{table_name}")
ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE WHERE name='#{table_name}'")
puts "Seeding Book Categories"
BookCategory.create([
  { html_selector: "better-living", name: "Better Living" },
  { html_selector: "philosophy", name: "Philosophy" },
  { html_selector: "peopleskill", name: "People Skills" },
  { html_selector: "econ", name: "Economics" },
  { html_selector: "history", name: "History" },
  { html_selector: "finance", name: "Finance" },
  { html_selector: "tech", name: "Technology" },
  { html_selector: "science", name: "Science" },
  { html_selector: "psych", name: "Psychology" },
  { html_selector: "productivity", name: "Productivity" },
  { html_selector: "autobio", name: "Autobiography" },
  { html_selector: "pol", name: "Politics" },
  { html_selector: "biz", name: "Business" },
  { html_selector: "misc", name: "Miscellaneous" },
])
