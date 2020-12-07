if (Rails.env.development?)
  table_name = "projects"
  ActiveRecord::Base.connection.execute("Delete from #{table_name}")
  ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE WHERE name='#{table_name}'")
else
  Project.destroy_all
end

puts "Seeing Projects"
i = 1

screen = "https://www.bluehawaiian.com/"
$project = Project.new({
  title: "Blue Hawaiian",
  description: "Professional: I, along with one other person, put together this masterpiece in about 5 months.",
  image_address: "bluehawaiian.jpg",
  image_alt: "alex younger blue hawaiian helicopters website project",
  project_link: screen,
  framework: "PHP Laravel",
})
i = i + 1
@project.save
@project.seed_screen(screen)

screen = "https://www.sundancehelicopters.com/"
$project = Project.new({
  title: "Sundance Helicopters",
  description: "Professional: I have been responsible for the ongoing maintenance and occasional redesigns of this site for nearly two years.",
  image_address: "sundance.jpg",
  image_alt: screen,
  project_link: "https://www.sundancehelicopters.com/",
  framework: "Ruby on Rails",

})
i = i + 1
@project.save
@project.seed_screen(screen)

screen = "https://www.izoox.com/"
$project = Project.new({
  title: "Izoox",
  description: "Professional: Site co-creator and ongoing maintenance.",
  image_address: "izoox.jpg",
  image_alt: "alex younger blue hawaiian helicopters website project",
  project_link: screen,
  framework: "PHP Laravel",

})
i = i + 1
@project.save
@project.seed_screen(screen)

screen = "https://www.irocks.com/"
$project = Project.new({
  title: "The Arkenstone",
  description: "Professional: Ongoing Maintenance",
  image_address: "irocks.jpg",
  image_alt: "alex younger blue hawaiian helicopters website project and management",
  project_link: screen,
  framework: "PHP Laravel",

})
i = i + 1
@project.save
@project.seed_screen(screen)

screen = "https://www.contemplativeoutreach.org/"
$project = Project.new({
  title: "Contemplative Outreach",
  description: "Professional: Site co-creator and ongoing maintenance.",
  image_address: "co.jpg",
  image_alt: "alex younger contemplative outreach website management",
  project_link: screen,
  framework: "Wordpress",

})
i = i + 1
@project.save
@project.seed_screen(screen)

screen = "https://github.com/AlextheYounga/hazlitt-data"
$project = Project.new({
  title: "Hazlitt Data",
  description: "Product of my company, Hazlitt Tech LLC, a data terminal for financial markets. In production.",
  image_address: "hazlitt-data.jpg",
  image_alt: "alex younger hazlitt data website project",
  project_link: screen,
  framework: "PHP Laravel",

})
i = i + 1
@project.save
@project.seed_screen(screen)

screen = "https://github.com/AlextheYounga/fractalGeometryCalculator"
$project = Project.new({
  title: "Fractal Geometry Calculator",
  description: "Personal: A Python program for determining Hurst exponents and rescale ranges",
  image_address: "mandelbrot.jpg",
  image_alt: "alex younger fractal geometry calculator",
  project_link: screen,
  framework: "Python",

})
i = i + 1
@project.save
@project.seed_screen(screen)

screen = "https://github.com/AlextheYounga/word-frequency-calculator"
$project = Project.new({
  title: "Word Frequency Calculator",
  description: "Personal: A Python program for calculating word frequency in a book, the average syllable count, and graphing word occurrence over time.",
  image_address: "wordfrequency.jpg",
  image_alt: "alex younger fractal geometry calculator",
  project_link: screen,
  framework: "Python",

})
i = i + 1
@project.save
@project.seed_screen(screen)

screen = "https://github.com/AlextheYounga/plungeAlertBot"
$project = Project.new({
  title: "Plunge Alert Telegram Bot",
  description: "Personal: A telegram bot that alerts you via telegram if the market has crashed",
  image_address: "plungealertbot.jpg",
  image_alt: "alex younger plunge alert telegram bot",
  project_link: screen,
  framework: "Python",

})
i = i + 1
@project.save
@project.seed_screen(screen)

screen = "https://github.com/AlextheYounga/deep-work-planner"
$project = Project.new({
  title: "Deep Work Planner",
  description: "Personal: A Daily Planner inspired by the book Deep Work",
  image_address: "deep-work-planner.jpg",
  image_alt: "alex younger deep work planner website project and management",
  project_link: screen,
  framework: "Ruby on Rails",

})
i = i + 1
@project.save
@project.seed_screen(screen)
