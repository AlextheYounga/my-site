Project.destroy_all

puts "Seeding Projects"
i = 1

screen = "bluehawaiian.jpg"
@project = Project.new(
  title: "Blue Hawaiian",
  description: "Professional: I, along with one other person, put together this masterpiece in about 5 months.",
  image_address: screen,
  image_alt: "alex younger blue hawaiian helicopters website project",
  project_link: "https://www.bluehawaiian.com/",
  framework: "PHP Laravel",
  position: i,
)
i = i + 1
@project.save
@project.seed_screens(screen)

screen = "sundance.jpg"
@project = Project.new(
  title: "Sundance Helicopters",
  description: "Professional: I have been responsible for the ongoing maintenance and occasional redesigns of this site for nearly two years.",
  image_address: screen,
  image_alt: "alex younger sundance helicopters website project",
  project_link: "https://www.sundancehelicopters.com/",
  framework: "Ruby on Rails",
  position: i,
)
i = i + 1
@project.save
@project.seed_screens(screen)

screen = "izoox.jpg"
@project = Project.new(
  title: "Izoox",
  description: "Professional: Site co-creator and ongoing maintenance.",
  image_address: screen,
  image_alt: "alex younger blue hawaiian helicopters website project",
  project_link: "https://www.izoox.com/",
  framework: "PHP Laravel",
  position: i,
)
i = i + 1
@project.save
@project.seed_screens(screen)

screen = "irocks.jpg"
@project = Project.new(
  title: "The Arkenstone",
  description: "Professional: Ongoing Maintenance",
  image_address: screen,
  image_alt: "alex younger blue hawaiian helicopters website project and management",
  project_link: "https://www.irocks.com/",
  framework: "PHP Laravel",
  position: i,
)
i = i + 1
@project.save
@project.seed_screens(screen)

screen = "co.jpg"
@project = Project.new(
  title: "Contemplative Outreach",
  description: "Professional: Site co-creator and ongoing maintenance.",
  image_address: screen,
  image_alt: "alex younger contemplative outreach website management",
  project_link: "https://www.contemplativeoutreach.org/",
  framework: "Wordpress",
  position: i,
)
i = i + 1
@project.save
@project.seed_screens(screen)

screen = "hazlitt-data.jpg"
@project = Project.new(
  title: "Hazlitt Data",
  description: "Product of my company, Hazlitt Tech LLC, a data terminal for financial markets. In production.",
  image_address: screen,
  image_alt: "alex younger hazlitt data website project",
  project_link: "https://github.com/AlextheYounga/hazlitt-data",
  framework: "PHP Laravel",
  position: i,
)
i = i + 1
@project.save
@project.seed_screens(screen)

screen = "mandelbrot.jpg"
@project = Project.new(
  title: "Fractal Geometry Calculator",
  description: "Personal: A Python program for determining Hurst exponents and rescale ranges",
  image_address: screen,
  image_alt: "alex younger fractal geometry calculator",
  project_link: "https://github.com/AlextheYounga/fractalGeometryCalculator",
  framework: "Python",
  position: i,
)
i = i + 1
@project.save
@project.seed_screens(screen)

screen = "wordfrequency.jpg"
@project = Project.new(
  title: "Word Frequency Calculator",
  description: "Personal: A Python program for calculating word frequency in a book, the average syllable count, and graphing word occurrence over time.",
  image_address: screen,
  image_alt: "alex younger fractal geometry calculator",
  project_link: "https://github.com/AlextheYounga/word-frequency-calculator",
  framework: "Python",
  position: i,
)
i = i + 1
@project.save
@project.seed_screens(screen)

screen = "plungealertbot.jpg"
@project = Project.new(
  title: "Plunge Alert Telegram Bot",
  description: "Personal: A telegram bot that alerts you via telegram if the market has crashed",
  image_address: screen,
  image_alt: "alex younger plunge alert telegram bot",
  project_link: "https://github.com/AlextheYounga/plungeAlertBot",
  framework: "Python",
  position: i,
)
i = i + 1
@project.save
@project.seed_screens(screen)

screen = "deep-work-planner.jpg"
@project = Project.new(
  title: "Deep Work Planner",
  description: "Personal: A Daily Planner inspired by the book Deep Work",
  image_address: screen,
  image_alt: "alex younger deep work planner website project and management",
  project_link: "https://github.com/AlextheYounga/deep-work-planner",
  framework: "Ruby on Rails",
  position: i,
)
i = i + 1
@project.save
@project.seed_screens(screen)
