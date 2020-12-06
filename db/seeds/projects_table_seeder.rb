if (Rails.env.development?)
  table_name = "projects"
  ActiveRecord::Base.connection.execute("Delete from #{table_name}")
  ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE WHERE name='#{table_name}'")
else
  Project.destroy_all
end

puts "Seeing Projects"
Project.create([
  {
    title: "Blue Hawaiian",
    description: "Professional: I, along with one other person, put together this masterpiece in about 5 months.",
    image_address: "bluehawaiian.jpg",
    image_alt: "alex younger blue hawaiian helicopters website project",
    project_link: "https://www.bluehawaiian.com/",
    framework: "PHP Laravel",

  },
  {
    title: "Sundance Helicopters",
    description: "Professional: I have been responsible for the ongoing maintenance and occasional redesigns of this site for nearly two years.",
    image_address: "sundance.jpg",
    image_alt: "alex younger sundance helicopters website project",
    project_link: "https://www.sundancehelicopters.com/",
    framework: "Ruby on Rails",

  },
  {
    title: "Izoox",
    description: "Professional: Site co-creator and ongoing maintenance.",
    image_address: "izoox.jpg",
    image_alt: "alex younger blue hawaiian helicopters website project",
    project_link: "https://www.izoox.com/",
    framework: "PHP Laravel",

  },
  {
    title: "The Arkenstone",
    description: "Professional: Ongoing Maintenance",
    image_address: "irocks.jpg",
    image_alt: "alex younger blue hawaiian helicopters website project and management",
    project_link: "https://www.irocks.com/",
    framework: "PHP Laravel",

  },
  {
    title: "Contemplative Outreach",
    description: "Professional: Site co-creator and ongoing maintenance.",
    image_address: "co.jpg",
    image_alt: "alex younger contemplative outreach website management",
    project_link: "https://www.contemplativeoutreach.org/",
    framework: "Wordpress",

  },
  {
    title: "Hazlitt Data",
    description: "Product of my company, Hazlitt Tech LLC, a data terminal for financial markets. In production.",
    image_address: "hazlitt-data.jpg",
    image_alt: "alex younger hazlitt data website project",
    project_link: "https://github.com/AlextheYounga/hazlitt-data",
    framework: "PHP Laravel",

  },
  {
    title: "Fractal Geometry Calculator",
    description: "Personal: A Python program for determining Hurst exponents and rescale ranges",
    image_address: "mandelbrot.jpg",
    image_alt: "alex younger fractal geometry calculator",
    project_link: "https://github.com/AlextheYounga/fractalGeometryCalculator",
    framework: "Python",

  },
  {
    title: "Word Frequency Calculator",
    description: "Personal: A Python program for calculating word frequency in a book, the average syllable count, and graphing word occurrence over time.",
    image_address: "wordfrequency.jpg",
    image_alt: "alex younger fractal geometry calculator",
    project_link: "https://github.com/AlextheYounga/word-frequency-calculator",
    framework: "Python",

  },
  {
    title: "Plunge Alert Telegram Bot",
    description: "Personal: A telegram bot that alerts you via telegram if the market has crashed",
    image_address: "plungealertbot.jpg",
    image_alt: "alex younger plunge alert telegram bot",
    project_link: "https://github.com/AlextheYounga/plungeAlertBot",
    framework: "Python",

  },
  {
    title: "Deep Work Planner",
    description: "Personal: A Daily Planner inspired by the book Deep Work",
    image_address: "deep-work-planner.jpg",
    image_alt: "alex younger deep work planner website project and management",
    project_link: "https://github.com/AlextheYounga/deep-work-planner",
    framework: "Ruby on Rails",

  },
])
