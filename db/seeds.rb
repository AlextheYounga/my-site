# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
#     load seed
#   end
  Quote.destroy_all
  Book.destroy_all
  Book.create([
                  {
                      title: "How to Win Friends and Influence People",
                      subtitle: "The Only Book You Ned to Lead You to Success",
                      author: "Dale Carnegie",
                      image_address: "win_friends_influence.jpg",
                      image_alt: "How to Win Friends and Influence People by Dale Carnegie",
                      category: "peopleskill",
                      book_link: "http://www.alextheyounger.me/articles/24",
                  },
                  {
                      title: "The Daily Stoic",
                      subtitle: "366 Meditations on Wisdom, Perseverance, and the Art of Living",
                      author: "Ryan Holiday",
                      image_address: "daily_stoic.jpg",
                      image_alt: "The Daily Stoic by Ryan Holiday",
                      category: "better-liv",
                      book_link: "http://www.alextheyounger.me/articles/25",
                  },
                  {
                      title: "Foundations of Morality",
                      author: "Henry Hazlitt",
                      image_address: "foundations_morality.jpg",
                      image_alt: "Foundations of Morality by Henry Hazlitt",
                      category: "phil",
                      book_link: "https://mises.org/library/foundations-morality"
                  },
                  {
                      title: "The Antidote",
                      subtitle: "Happiness For People Who Can't Stand Positive Thinking",
                      author: "Oliver Burkeman",
                      image_address: "the_antidote.jpg",
                      image_alt: "The Antidote: Happiness For People Who Can't Stand Positive Thinking by Oliver Burkeman",
                      category: "better-liv",
                      book_link: "https://www.amazon.com/Antidote-Happiness-People-Positive-Thinking/dp/0865478015/ref=sr_1_1?s=books&ie=UTF8&qid=1515919681&sr=1-1&keywords=the+antidote+happiness+for+people+who+can%27t+stand+positive+thinking"
                  },
                  {
                      title: "Square One",
                      subtitle: "The Foundations of Knowledge",
                      author: "Steve Patterson",
                      image_address: "square_one.jpg",
                      image_alt: "Square One: The Foundations of Knowledge by Steve Patterson",
                      category: "phil",
                      book_link: "https://www.amazon.com/Square-One-Foundations-Steve-Patterson-ebook/dp/B01M9JL27L/ref=sr_1_1?ie=UTF8&qid=1515980663&sr=8-1&keywords=square+one+steve+patterson",
                  },
                  {
                      title: "Making Economic Sense",
                      author: "Murray Rothbard",
                      image_address: "making_economic_sense.jpg",
                      image_alt: "Making Economic Sense by Murray Rothbard",
                      category: "econ",
                      book_link: "https://mises.org/library/making-economic-sense",
                  },
                  {
                      title: "Good Profit",
                      subtitle: "How Creating Value for Others Built One of the World's Most Successful Companies",
                      author: "Charles Koch",
                      image_address: "good_profit.jpg",
                      image_alt: "Good Profit by Charles Koch",
                      category: "biz",
                      book_link: "https://www.amazon.com/Good-Profit-Creating-Successful-Companies/dp/1101904135/ref=sr_1_1?s=books&ie=UTF8&qid=1515919796&sr=1-1&keywords=good+profit+charles+koch",
                  },
                  {
                      title: "A Guide to the Good Life",
                      subtitle: "The Ancient Art of Stoic Joy",
                      author: "William B. Irvine",
                      image_address: "good_life.jpg",
                      image_alt: "A Guide to the Good Life by William B. Irvine",
                      category: "better-liv",
                      book_link: "https://www.amazon.com/Guide-Good-Life-Ancient-Stoic/dp/0195374614/ref=sr_1_1?s=books&ie=UTF8&qid=1515918746&sr=1-1&keywords=a+guide+to+the+good+life",
                  },
                  {
                      title: "The Solution to Social Anxiety",
                      subtitle: "Break Free from the Shyness That Holds You Back",
                      author: "Dr. Aziz Gazipura",
                      image_address: "social_anxiety.jpg",
                      image_alt: "The Solution to Social Anxiety by Dr. Aziz Gazipura",
                      category: "peopleskill",
                      book_link: "https://www.amazon.com/Solution-Social-Anxiety-Break-Shyness-ebook/dp/B00F5IU5CU/ref=sr_1_2_sspa?s=books&ie=UTF8&qid=1515919521&sr=1-2-spons&keywords=solution+to+social+anxiety&psc=1",
                  },
                  {
                      title: "Notes on Democracy",
                      author: "H.L. Mencken",
                      image_address: "notes_on_democracy.jpg",
                      image_alt: "Notes on Democracy by H.L. Mencken",
                      category: "pol",
                      book_link: "https://www.amazon.com/Notes-Democracy-Large-Print-Mencken/dp/1494288648/ref=sr_1_1?s=books&ie=UTF8&qid=1515919184&sr=1-1&keywords=notes+on+democracy",
                  },
                  {
                      title: "Waking Up",
                      subtitle: "A Guide to Spirituality Without Religion",
                      author: "Sam Harris",
                      image_address: "waking_up.jpg",
                      image_alt: "Waking Up by Sam Harris",
                      category: "better-liv",
                      book_link: "https://www.amazon.com/Waking-Up-Spirituality-Without-Religion/dp/1451636024/ref=sr_1_1?s=books&ie=UTF8&qid=1515920029&sr=1-1&keywords=waking+up+sam+harris",
                  },
                  {
                      title: "Out of Your Mind",
                      subtitle: "Essential Listening from the Alan Watts Archives",
                      author: "Alan Watts",
                      image_address: "out_of_your_mind.jpg",
                      image_alt: "Out of Your Mind",
                      category: "phil",
                      book_link: "https://www.amazon.com/Out-of-Your-Mind/dp/B0162WIRKY/ref=sr_1_2?ie=UTF8&qid=1517010662&sr=8-2&keywords=out+of+your+mind+by+alan+watts",
                  },
                  {
                      title: "You're It",
                      subtitle: "On Hiding, Seeking, and Being Found",
                      category: "phil",
                      image_address: "youre_it.jpg",
                      book_link: "https://www.amazon.com/Youre-Hiding-Seeking-Being-Found/dp/1591797349",
                      image_alt: "You're It by Alan Watts",
                      author: "Alan Watts",
                  },
                  {
                      title: "Street Smarts",
                      subtitle: "",
                      category: "finance",
                      image_address: "street_smarts.jpg",
                      book_link: "https://www.amazon.com/Street-Smarts-Adventures-Road-Markets/dp/0307986071/ref=sr_1_1?s=books&ie=UTF8&qid=1515923486&sr=1-1&keywords=street+smarts+jim+rogers",
                      image_alt: "Street Smarts by Jim Rogers",
                      author: "Jim Rogers",
                  },
                  {
                      title: "The Charisma Myth",
                      subtitle: "How Anyone Can Master the Art and Science of Personal Magnetism",
                      category: "peopleskill",
                      image_address: "charisma_myth.jpg",
                      book_link: "https://www.amazon.com/Charisma-Myth-Science-Personal-Magnetism/dp/1591845947/ref=sr_1_1?s=books&ie=UTF8&qid=1515919947&sr=1-1&keywords=The+Charisma+Myth+by+Olivia+Fox+Cabane",
                      image_alt: "The Charisma Myth by Olivia Fox Cabane",
                      author: "Olivia Fox Cabane",
                  },
                  {
                      title: "Extraordinary Popular Delusions and the Madness of Crowds",
                      category: "finance",
                      image_address: "madness_of_crowds.jpg",
                      book_link: "https://www.amazon.com/Extraordinary-Popular-Delusions-Madness-Crowds/dp/1463740514/ref=sr_1_1?s=books&ie=UTF8&qid=1515920340&sr=1-1&keywords=extraordinary+popular+delusions+and+the+madness+of+crowds",
                      image_alt: "Extraordinary Popular Delusions and the Madness of Crowds by Charles Mackay",
                      author: "Charles Mackay",
                  },
                  {
                      title: "A Troublesome Inheritance",
                      subtitle: "Genes, Race, and Human History",
                      category: "sci",
                      image_address: "troublesome_inheritance.jpg",
                      book_link: "https://www.amazon.com/Troublesome-Inheritance-Genes-Human-History/dp/0143127160/ref=sr_1_1?s=books&ie=UTF8&qid=1515921233&sr=1-1&keywords=a+troublesome+inheritance+by+nicholas+wade",
                      image_alt: "A Troublesome Inheritance by Nicholas Wade",
                      author: "Nicholas Wade",
                  },
                  {
                      title: "Why We Sleep",
                      subtitle: "Unlocking the Power of Sleep and Dreams",
                      category: "sci",
                      image_address: "why_we_sleep.jpg",
                      book_link: "https://www.amazon.com/Why-We-Sleep-Unlocking-Dreams/dp/1501144316",
                      image_alt: "Unlocking the Power of Sleep and Dreams by Matthew Walker, PhD",
                      author: "Matthew Walker, PhD",
                  },
                  {
                      title: "Fool's Errand",
                      subtitle: "Time to End the War in Afghanistan",
                      category: "pol",
                      image_address: "fools_errand.jpg",
                      book_link: "https://www.amazon.com/Fools-Errand-Time-End-Afghanistan/dp/1548650218",
                      image_alt: "https://images-na.ssl-images-amazon.com/images/I/51zrL6zS1ZL._SX331_BO1,204,203,200_.jpg",
                      author: "Scott Horton",
                  },
                  {
                      title: "The Failure of the New Economics",
                      subtitle: "An Analysis of the Keynesian Fallacies",
                      category: "econ",
                      image_address: "failure_new_economics.jpg",
                      book_link: "https://mises.org/library/failure-new-economics-0",
                      image_alt: "The Failure of the New Economics by Henry Hazlitt",
                      author: "Henry Hazlitt",
                  },
                  {
                      title: "The Righteous Mind",
                      subtitle: "Why Good People are Divided by Politics and Religion",
                      category: "pol",
                      image_address: "righteous_mind.jpg",
                      book_link: "https://www.amazon.com/Righteous-Mind-Divided-Politics-Religion/dp/0307455777/ref=sr_1_1?s=books&ie=UTF8&qid=1515921478&sr=1-1&keywords=jonathan+haidt+the+righteous+mind",
                      image_alt: "The Righteous Mind by Jonathan Haidt",
                      author: "Jonathan Haidt",
                  },
                  {
                      title: "Do What You Are",
                      subtitle: "Discover the Perfect Career for You Through the Secrets of Personality Type",
                      category: "better-liv",
                      image_address: "do_what_you_are.jpg",
                      book_link: "https://www.amazon.com/Do-What-You-Are-Personality/dp/031623673X/ref=sr_1_2?s=books&ie=UTF8&qid=1515924039&sr=1-2&keywords=do+what+you+are+paul+tieger",
                      image_alt: "Do What You Are by Paul D. Tieger, Barbara Barron, and Kelly Tieger",
                      author: "Paul D. Tieger, Barbara Barron, and Kelly Tieger",
                  },
                  {
                      title: "Mindfulness in Plain English",
                      category: "better-liv",
                      image_address: "mindfulness_plain_english.jpg",
                      book_link: "https://www.amazon.com/Mindfulness-Plain-English-Revised-Expanded/dp/0861713214/ref=sr_1_3?s=books&ie=UTF8&qid=1517263300&sr=1-3&keywords=mindfulness+in+plain+english",
                      image_alt: "Mindfulness in Plain English by Bhante Gunaratana",
                      author: "Bhante Gunaratana",
                  },
                  {
                      title: "Deep Work",
                      subtitle: "Rules for Focused Success in a Distracted World",
                      category: "better-liv",
                      image_address: "deep_work.jpg",
                      book_link: "https://www.amazon.com/Deep-Work-Focused-Success-Distracted/dp/1455586692/ref=sr_1_1?s=books&ie=UTF8&qid=1515921725&sr=1-1&keywords=cal+newport+deep+work",
                      image_alt: "Deep Work by Cal Newport",
                      author: "Cal Newport",
                  },
                  {
                      title: "Deep Thoughts",
                      subtitle: "Inspiration for the Uninspired",
                      category: "misc",
                      image_address: "deep_thoughts.jpg",
                      book_link: "https://www.amazon.com/Deep-Thoughts-Inspiration-Jack-Handey/dp/0425133656",
                      image_alt: "Deep Thoughts by Jack Handey",
                      author: "Jack Handey",
                  },
                  {
                      title: "Total Recall",
                      subtitle: "My Unbelievably True Life Story",
                      category: "misc",
                      image_address: "total_recall.jpg",
                      book_link: "https://www.amazon.com/Total-Recall-Unbelievably-True-Story/dp/1451662440/ref=sr_1_1?s=books&ie=UTF8&qid=1521363393&sr=1-1&keywords=total+recall+arnold+schwarzenegger",
                      image_alt: "Total Recall by Arnold Schwarzenegger",
                      author: "Arnold Schwarzenegger",
                  },
                  {
                      title: "Hawk",
                      subtitle: "Occupation: Skateboarder",
                      category: "misc",
                      image_address: "hawk.jpg",
                      book_link: "https://www.amazon.com/Hawk-Occupation-Skateboarder-Tony/dp/0060958316/ref=sr_1_2?ie=UTF8&qid=1521363258&sr=8-2&keywords=hawk+by+tony+hawk&dpID=51TnMCb8ToL&preST=_SY291_BO1,204,203,200_QL40_&dpSrc=srch",
                      image_alt: "Hawk by Tony Hawk",
                      author: "Tony Hawk",
                  },
                  {
                      title: "Hot Commodities",
                      subtitle: "How Anyone Can Invest Profitably in the World's Best Market",
                      category: "finance",
                      image_address: "hot_commodities.jpg",
                      book_link: "https://www.amazon.com/Hot-Commodities-Anyone-Invest-Profitably-ebook/dp/B000FC2OO8/ref=sr_1_1?s=digital-text&ie=UTF8&qid=1515983311&sr=1-1&keywords=hot+commodities+jim+rogers",
                      image_alt: "Hot Commodities by Jim Rogers",
                      author: "Jim Rogers",
                  },
                  {
                      title: "The Road to Ruin",
                      subtitle: "The Global Elites' Secret Plan for the Next Financial Crisis",
                      category: "pol",
                      image_address: "road_to_ruin.jpg",
                      book_link: "https://www.amazon.com/Road-Ruin-Global-Elites-Financial/dp/1591848083/ref=sr_1_1?s=books&ie=UTF8&qid=1515984429&sr=1-1&keywords=The+Road+to+Ruin+by+James+Rickards",
                      image_alt: "The Road to Ruin by Jim Rickards",
                      author: "Jim Rickards",
                  },
                  {
                      title: "Enlightenment Now",
                      subtitle: "The Case for Reason, Science, Humanism, and Progress",
                      category: "sci",
                      image_address: "enlightenment_now.jpg",
                      book_link: "https://www.amazon.com/Enlightenment-Now-Science-Humanism-Progress/dp/0525427570/ref=sr_1_2?s=books&ie=UTF8&qid=1526181530&sr=1-2&keywords=enlightenment+now+by+steven+pinker",
                      image_alt: "Enlightenment Now by Steven Pinker",
                      author: "Steven Pinker",
                  },
                  {
                      title: "The Willpower Instinct",
                      subtitle: "How Self Control Works, Why it Matters, and What You Can Do to Get More of It",
                      category: "better-liv",
                      image_address: "willpower_instinct.jpg",
                      book_link: "https://www.amazon.com/Willpower-Instinct-Self-Control-Works-Matters/dp/1583335080/ref=sr_1_2?s=books&ie=UTF8&qid=1515923129&sr=1-2&keywords=willpower+instinct+by+kelly+mcgonigal",
                      image_alt: "https://images.gr-assets.com/books/1436737104l/10865206.jpg",
                      author: "Kelly McGonigal, Phd",
                  },
                  {
                      title: "Economics in One Lesson",
                      subtitle: "The Shortest and Surest Way to Understand Basic Economics",
                      category: "econ",
                      image_address: "economics_one_lesson.jpg",
                      book_link: "https://www.amazon.com/Henry-Hazlitt-Economics-One-Lesson/dp/B004LNZ5H0/ref=sr_1_5?s=books&ie=UTF8&qid=1515985408&sr=1-5&keywords=economics+in+one+lesson+henry+hazlitt",
                      image_alt: "Economics in One Lesson by Henry Hazlitt",
                      author: "Henry Hazlitt",
                  },
                  {
                      title: "The Richest Man in Babylon",
                      category: "finance",
                      image_address: "richest_man_babylon.jpg",
                      book_link: "https://www.amazon.com/Richest-Man-Babylon-George-Clason/dp/1939438330/ref=pd_lpo_sbs_14_img_0?_encoding=UTF8&psc=1&refRID=08XFMFWKZHFKNRJZYYDF",
                      image_alt: "The Richest Man in Babylon by George Clason",
                      author: "George Clason",
                  },
                  {
                      title: "Free Will",
                      category: "phil",
                      image_address: "free_will.jpg",
                      book_link: "https://www.amazon.com/Free-Will-Harris-Sam-Paperback/dp/B011SJZJ8O/ref=sr_1_3?s=books&ie=UTF8&qid=1517011043&sr=1-3&keywords=free+will+sam+harris",
                      image_alt: "Free Will by Sam Harris",
                      author: "Sam Harris",
                  },
                  {
                      title: "Influence",
                      subtitle: "The Psychology of Persuasion",
                      category: "peopleskill",
                      image_address: "influence.jpg",
                      book_link: "https://www.amazon.com/Influence-Psychology-Persuasion-Robert-Cialdini/dp/006124189X/ref=sr_1_1?s=books&ie=UTF8&qid=1515922756&sr=1-1&keywords=influence+robert+cialdini",
                      image_alt: "Influence by Robert Cialdini",
                      author: "Robert Cialdini",
                  },
                  {
                      title: "Socialism",
                      subtitle: "An Economic and Sociological Analysis",
                      category: "econ",
                      image_address: "socialism.jpg",
                      book_link: "https://mises.org/library/socialism-economic-and-sociological-analysis",
                      image_alt: "Socialism by Ludwig Von Mises",
                      author: "Ludwig Von Mises",
                  },
                  {
                      title: "The Power of Body Language",
                      subtitle: "An Ex-FBI Agent's System for Speed Reading People",
                      category: "peopleskill",
                      image_address: "body_language.jpg",
                      book_link: "https://www.amazon.com/Power-Body-Language-Ex-FBI-Speed-Reading/dp/B00OH795TO/ref=sr_1_2?ie=UTF8&qid=1515983461&sr=8-2&keywords=the+power+of+body+language+joe+navarro",
                      image_alt: "The Power of Body Language by Joe Navarro",
                      author: "Joe Navarro",
                  },
                  {
                      title: "What Has Government Done to Our Money",
                      subtitle: "and The Case for a 100 Percent Gold Dollar",
                      category: "econ",
                      image_address: "government_money.jpg",
                      book_link: "https://mises.org/library/what-has-government-done-our-money",
                      image_alt: "What Has Government Done to Our Money by Murray Rothbard",
                      author: "Murray Rothbard",
                  },
                  {
                      title: "Show Your Work",
                      subtitle: "10 Ways to Share Your Creativity and Get Discovered",
                      category: "biz",
                      image_address: "show_your_work.jpg",
                      book_link: "https://www.amazon.com/Show-Your-Work-Austin-Kleon/dp/076117897X/ref=sr_1_1?s=books&ie=UTF8&qid=1520050953&sr=1-1&keywords=show+your+work",
                      image_alt: "Show Your Work by Austin Kleon",
                      author: "Austin Kleon",
                  },
                  {
                      title: "The Book on Rental Property Investing",
                      subtitle: "How to create wealth and passive income through smart buy & hold real estate investing",
                      category: "finance",
                      image_address: "rental_property.jpg",
                      book_link: "https://www.amazon.com/Book-Rental-Property-Investing-Intelligent/dp/099071179X/ref=sr_1_3?s=books&ie=UTF8&qid=1533872549&sr=1-3&keywords=rental+property+investing",
                      image_alt: "The Book on Rental Property Investing by Brandon Turner",
                      author: "Brandon Turner",
                  },
                  {
                      title: "Steal the Show",
                      subtitle: "How to Guarantee a Standing Ovation for All the Performances in Your Life",
                      category: "peopleskill",
                      image_address: "steal_the_show.jpg",
                      book_link: "https://www.amazon.com/Steal-Show-Interviews-Deal-Closing-Performances/dp/0544800842/ref=sr_1_1?s=books&ie=UTF8&qid=1515984539&sr=1-1&keywords=Steal+the+Show+by+Michael+Port",
                      image_alt: "Steal the Show by Michael Port",
                      author: "Michael Port",
                  },
                  {
                      title: "Crucial Conversations",
                      subtitle: "Tools for Talking When the Stakes are High",
                      category: "peopleskill",
                      image_address: "crucial_conversations.jpg",
                      book_link: "https://www.amazon.com/Crucial-Conversations-Talking-Stakes-Second/dp/0071771328/ref=sr_1_1?s=books&ie=UTF8&qid=1515984205&sr=1-1&keywords=crucial+conversations",
                      image_alt: "Crucial Conversations by Kelly Patterson",
                      author: "Kelly Patterson",
                  },
                  {
                      title: "What You Should Know About Inflation",
                      category: "econ",
                      image_address: "inflation.jpg",
                      book_link: "https://mises.org/library/what-you-should-know-about-inflation-0",
                      image_alt: "What You Should Know About Inflation by Henry Hazlitt",
                      author: "Henry Hazlitt",
                  },
                  {
                      title: "Behave",
                      subtitle: "The Biology of Humans at Our Best and at Our Worst",
                      category: "sci",
                      image_address: "behave.jpg",
                      book_link: "https://www.amazon.com/Behave-Biology-Humans-Best-Worst-ebook/dp/B01IAUGC5S/ref=sr_1_1?s=digital-text&ie=UTF8&qid=1515981537&sr=1-1&keywords=behave+robert+sapolsky",
                      image_alt: "Behave by Robert M. Sapolsky",
                      author: "Robert M. Sapolsky",
                  },
                  {
                      title: "America's Great Depression",
                      category: "econ",
                      image_address: "great_depression.jpg",
                      book_link: "https://mises.org/library/americas-great-depression",
                      image_alt: "America's Great Depression by Murray Rothbard",
                      author: "Murray Rothbard",
                  },
                  {
                      title: "A Short History of Man",
                      subtitle: "Progress and Decline",
                      category: "misc",
                      image_address: "history_of_man.jpg",
                      book_link: "https://www.amazon.com/Short-History-Man-Progress-Decline/dp/1610165918/ref=sr_1_1?s=books&ie=UTF8&qid=1515984984&sr=1-1&keywords=a+short+history+of+man+hoppe",
                      image_alt: "A Short History of Man by Hans-Hermann Hoppe",
                      author: "Hans-Hermann Hoppe",
                  },
                  {
                      title: "The CEO Tightrope",
                      subtitle: "How to Master the Balancing Act of a CEO",
                      category: "biz",
                      image_address: "ceo_tightrope.jpg",
                      book_link: "https://www.amazon.com/CEO-Tightrope-Master-Balancing-Successful/dp/1626341060/ref=sr_1_1?s=books&ie=UTF8&qid=1515986582&sr=1-1&keywords=the+ceo+tightrope+by+joel+trammell",
                      image_alt: "The CEO Tightrope by Joel Trammell",
                      author: "Joel Trammell",
                  },
                  {
                      title: "The Little Book of Bull Moves",
                      subtitle: "How to Keep Your Portfolio Up When the Market is Up, Down, or Sideways",
                      category: "finance",
                      image_address: "bull_moves.jpg",
                      book_link: "https://www.amazon.com/Little-Book-Moves-Updated-Expanded/dp/0470643994/ref=sr_1_2?s=books&ie=UTF8&qid=1515983796&sr=1-2&keywords=the+little+book+of+bull+moves+peter+schiff",
                      image_alt: "The Little Book of Bull Moves by Peter Schiff",
                      author: "Peter Schiff",
                  },
                  {
                      title: "The 4-Hour Workweek",
                      subtitle: "Escape 9-5, Live Anywhere, and Join the New Rich",
                      category: "biz",
                      image_address: "4_hour.jpg",
                      book_link: "https://www.amazon.com/4-Hour-Workweek-Escape-Live-Anywhere/dp/0307465357/ref=sr_1_1?s=books&ie=UTF8&qid=1515985483&sr=1-1&keywords=the+four+hour+work+week",
                      image_alt: "The 4 Hour Workweek by Tim Ferriss",
                      author: "Tim Ferriss",
                  },
                  {
                      title: "The 48 Laws of Power",
                      category: "misc",
                      image_address: "48_laws.jpg",
                      book_link: "https://www.amazon.com/Summary-Power-Robert-Greene-Ideas-ebook/dp/B0776CLL6V/ref=sr_1_1_sspa?s=books&ie=UTF8&qid=1515986892&sr=1-1-spons&keywords=the+48+laws+of+power&psc=1",
                      image_alt: "The 48 Laws of Power by Robert Greene",
                      author: "Robert Greene",
                  },
  
                  {
                      title: "The Intelligent Investor",
                      subtitle: "The Definitive Book on Value Investing",
                      category: "finance",
                      image_address: "intelligent_investor.jpg",
                      book_link: "https://www.amazon.com/Intelligent-Investor-Definitive-Investing-Essentials/dp/0060555661/ref=sr_1_1?s=books&ie=UTF8&qid=1515987281&sr=1-1&keywords=the+intelligent+investor+by+benjamin+graham",
                      image_alt: "The Intelligent Investor by Benjamin Graham",
                      author: "Benjamin Graham",
                  },
                  {
                      title: "The Lean Startup",
                      subtitle: "How Today's Entrepreneurs Use Continuous Innovation to Create Radically Successful Businesses",
                      category: "biz",
                      image_address: "lean_startup.jpg",
                      book_link: "https://www.amazon.com/Lean-Startup-Entrepreneurs-Continuous-Innovation/dp/0307887898/ref=sr_1_3?s=books&ie=UTF8&qid=1515983642&sr=1-3&keywords=the+lean+startup+eric+ries",
                      image_alt: "The Lean Startup by Eric Ries",
                      author: "Eric Ries",
                  },
                  {
                      title: "The Politically Incorrect Guide to American History",
                      category: "pol",
                      image_address: "politically_incorrect.jpg",
                      book_link: "https://www.amazon.com/Politically-Incorrect-Guide-American-History/dp/B000CCE4JE/ref=sr_1_1?ie=UTF8&qid=1517017239&sr=8-1&keywords=politically+incorrect+guide+to+american+history",
                      image_alt: "The Politically Correct Guide to American History by Thomas e. Woods",
                      author: "Thomas E. Woods",
                  },
                  {
                      title: "To Sell is Human",
                      subtitle: "The Surprising Truth About Moving Others",
                      category: "biz",
                      image_address: "sell_is_human.jpg",
                      book_link: "https://www.amazon.com/Sell-Human-Surprising-Moving-Others/dp/1594631905/ref=sr_1_3?s=books&ie=UTF8&qid=1515985359&sr=1-3&keywords=to+sell+is+human",
                      image_alt: "To Sell is Human by Daniel H. Pink",
                      author: "Daniel H. Pink",
                  },
                  {
                      title: "Born for This",
                      category: "biz",
                      image_address: "born_for_this.jpg",
                      book_link: "https://www.amazon.com/Born-This-Find-Work-Meant/dp/1101903988/ref=sr_1_1?s=books&ie=UTF8&qid=1515985831&sr=1-1&keywords=born+for+this+chris+guillebeau",
                      image_alt: "Born for This by Chris Guillebeau",
                      author: "Chris Guillebeau",
                  },
                  {
                      title: "The $100 Startup",
                      subtitle: "Reinvent the Way You Make a Living, Do What You Love, and Create a New Future",
                      category: "biz",
                      image_address: "100_startup.jpg",
                      book_link: "https://www.amazon.com/100-Startup-Reinvent-Living-Create/dp/0307951529/ref=sr_1_1?s=books&ie=UTF8&qid=1515986114&sr=1-1&keywords=the+%24100+startup+by+chris+guillebeau",
                      image_alt: "The $100 Startup by Chris Guillebeau",
                      author: "Chris Guillebeau",
                  },
                  {
                      title: "The Law",
                      category: "econ",
                      image_address: "the_law.jpg",
                      book_link: "https://www.amazon.com/s/ref=nb_sb_ss_i_1_11?url=search-alias%3Dstripbooks&field-keywords=the+law+by+frederic+bastiat&sprefix=the+law+by+%2Cstripbooks%2C186&crid=7ZMH94ILX0L6",
                      image_alt: "The Law by Frederic Bastiat",
                      author: "Frederic Bastiat",
                  },
                  {
                      title: "Why Zebras Don't Get Ulcers",
                      subtitle: "The Acclaimed Guide to Stress, Stress-Related Diseases, and Coping",
                      category: "sci",
                      image_address: "zebras_dont_get_ulcers.jpg",
                      book_link: "https://www.amazon.com/Why-Zebras-Dont-Ulcers-Third/dp/0805073698/ref=sr_1_1?s=books&ie=UTF8&qid=1515986523&sr=1-1&keywords=Why+Zebras+Don%27t+Get+Ulcers+by+Robert+M.+Sapolsky",
                      image_alt: "Why Zebras Don't Get Ulcers by Robert M. Sapolsky",
                      author: "Robert M. Sapolsky",
                  },
                  {
                      title: "The Three Languages of Politics",
                      subtitle: "Talking Across the Political Divides",
                      category: "pol",
                      image_address: "three_languages_politics.jpg",
                      book_link: "https://www.amazon.com/Three-Languages-Politics-Talking-Political/dp/1944424466/ref=sr_1_1?s=books&ie=UTF8&qid=1515986807&sr=1-1&keywords=The+Three+Languages+of+Politics+by+Arnold+Kling",
                      image_alt: "The Three Languages of Politics by Arnold Kling",
                      author: "Arnold Kling",
                  },
                  {
                      title: "Never Eat Alone",
                      subtitle: "And Other Secrets to Success, One Relationship at a Time",
                      category: "peopleskill",
                      image_address: "never_eat_alone.jpg",
                      book_link: "https://www.amazon.com/Never-Eat-Alone-Expanded-Updated/dp/0385346654/ref=sr_1_1?s=books&ie=UTF8&qid=1515987002&sr=1-1&keywords=never+eat+alone+by+keith+ferrazzi",
                      image_alt: "Never Eat Alone by Keith Ferrazzi",
                      author: "Keith Ferrazzi",
                  },
                  {
                      title: "Darkness Visible",
                      subtitle: "A Memoir of Madness",
                      category: "misc",
                      image_address: "darkness_visible.jpg",
                      book_link: "https://www.amazon.com/Darkness-Visible-Madness-William-Styron/dp/0679736395/ref=sr_1_1?s=books&ie=UTF8&qid=1515987132&sr=1-1&keywords=darkness+visible+william+styron",
                      image_alt: "Darkness Visible by William Styron",
                      author: "William Styron",
                  },
                  {
                      title: "Ignore Everybody",
                      subtitle: "And 39 Other Keys to Creativity",
                      category: "misc",
                      image_address: "ignore_everybody.jpg",
                      book_link: "https://www.amazon.com/Ignore-Everybody-Other-Keys-Creativity/dp/159184259X/ref=sr_1_1?s=books&ie=UTF8&qid=1515985570&sr=1-1&keywords=Ignore+Everybody+by+Hugh+Macleod",
                      image_alt: "Ignore Everybody by Hugh Macleod",
                      author: "Hugh MacLeod",
                  },
                  {
                      title: "Economic Controversies",
                      category: "econ",
                      image_address: "economic_controversies",
                      book_link: "https://mises.org/library/economic-controversies",
                      image_alt: "Economic Controversies by Murry Rothbard",
                      author: "Murray Rothbard",
                  },
                  {
                      title: "The Ruby on Rails Tutorial",
                      subtitle: "Learn Web Development with Rails",
                      category: "misc",
                      image_address: "ruby_tutorial.jpg",
                      book_link: "https://www.railstutorial.org/",
                      image_alt: "The Ruby on Rails Tutorial by Michael Hartl",
                      author: "Michael Hartl",
                  },
                  {
                      title: "Spacetime Physics",
                      subtitle: "Introduction to Special Relativity; Second Edition",
                      category: "sci",
                      image_address: "spacetime_physics.jpg",
                      book_link: "https://www.amazon.com/Spacetime-Physics-Edwin-F-Taylor/dp/0716723271/ref=sr_1_1?s=books&ie=UTF8&qid=1517016672&sr=1-1&keywords=spacetime+physics+taylor+and+wheeler",
                      image_alt: "Spacetime Physics by Edwin F. Taylor & John Archibald Wheeler",
                      author: "Edwin F. Taylor & John Archibald Wheeler",
                  }])


                 
Quote.create([
        {
            quote: "It takes a big man to cry, but it takes a bigger man to laugh at that man",
			name: "Jack Handey, Deep Thoughts"
	    }, 
	    {
	    	quote: "The dumber people think you are, the more surprised they're going to be when you kill them",
	    	name: "William Clayton"
	    },
	    {
	    	quote: "People don’t care how much you know until they know how much you care.",
	    	name: "John C. Maxwell, Leadership 101"
	    },
	    {
	    	quote: "The man who grasps principles can successfully handle his own methods. The man who tries methods, ignoring principles is sure to have trouble",
	    	name: "Ralph Waldo Emerson",
	    },
	    {
	    	quote: "People go, 'Do you think the vast majority of the world is wrong?' …Well, yes. I don’t know how to say that nicely, but yes.",
	    	name: "Tim Minchin"
	    },
	    {
	    	quote: "Life is a bridge. Pass over but build no house upon it.",
	    	name: "Old Hindu saying"
	    },
	    {
	    	quote: "I begin to speak only when I am certain what I'll say isn't better left unsaid.",
	    	name: "Cato the Younger"
	    },
	    {
	    	quote: "The chief task in life is simply this: to identify and separate matters so that I can say clearly to myself which are externals not under my control, and which have to do with the choices I actually control. Where do I look for good and evil? Not to the externals, but within myself to the choices that are my own.",
	    	name: "Epictetus, Discourses"
	    },
	    {
	    	quote: "In the end, what would gain from everlasting remembrance? Absolutely nothing. So what is left worth living for? This alone: justice in thought, goodness in action, speech that cannot deceive, and a disposition glad of whatever comes, welcoming it as necessary, as familiar, as flowing from the same source and fountain as yourself.",
	    	name: "Marcus Aurelius, Meditations"
	    },
	    {
	    	quote: "The older I grow the more I distrust the familiar doctrine that age brings wisdom.",
	    	name: "H.L. Mencken"
	    },
	    {
	    	quote: "Man is a beautiful machine that works very badly.",
	    	name: "H.L. Mencken"
	    },
	    {
	    	quote: "A city workman, oppressed by Prohibition, mourns the loss of his beer, not the loss of his liberty.",
	    	name: "H.L. Mencken, Notes on Democracy"
	    },
	    {
	    	quote: "But let me offer you my definition of social justice: I keep what I earn and you keep what you earn. Do you disagree? Well then tell me how much of what I earn belongs to you - and why?",
	    	name: "Walter E. Williams, All It Takes Is Guts: A Minority View"
	    },
	    {
	    	quote: "There is no way of wasting time, because what is time for except to be wasted. And who can say you are wasting time other than you?",
	    	name: "Alan Watts, Out of Your Mind"
	    },
	    {
	    	quote: "You know that if you get in the water and have nothing to hold on to, but try to behave as you would on dry land, you will drown. But if, on the other hand, you trust yourself to the water and let go, you will float.",
	    	name: "Alan Watts"
	    },
	    {
	    	quote: "People who think they know everything are a great annoyance to those of us who do.",
	    	name: "Isaac Asimov"
	    },
	    {
	    	quote: "Of course, you can’t force your mind to be silent. That would be like trying to smooth ripples in water with a flatiron. Water becomes clear and calm only when left alone.",
	    	name: "Alan Watts"
	    },
	    {
	    	quote: "I think Abe Lincoln said it best when he said 'I'm often misquoted. And I love riding motorcycles! Vvvrroooom!!!'",
	    	name: "Bo Burnham"
	    },
	    {
	    	quote: "Tragedy is when I cut my finger. Comedy is when you walk into an open sewer and die.",
	    	name: "Mel Brooks"
	    },
	    {
	    	quote: "Consider the daffodil. And while you're doing that, I'll be over here, going through your stuff.",
	    	name: "Jack Handey, Deep Thoughts"
	    },
	    {
	    	quote: "Good, then we will fight in the shade.",
	    	name: "Dienekes, upon hearing the arrows of Xerxes's army would blot out the Sun"
	    },
	    {
	    	quote: "I’d say, don’t take advice from people like me, who got very lucky. We’re very biased, like- Taylor Swift telling you to follow your dreams is like a lottery winner saying, liquidize your assets, buy Power Ball tickets! It works!",
	    	name: "Bo Burnham, after being asked what advice he'd give to young people"
	    },
	    {
	    	quote: "Two elements must be rooted out once and for all: The fear of future suffering, and the recollection of past suffering. Since the latter no longer concerns me, and the former concerns me not yet.",
	    	name: "Seneca"
	    },
	    {
	    	quote: "How many have laid waste to your life when you weren't aware of what you were losing, how much of it was wasted in pointless grief, foolish joy, greedy desire, and social amusements- how little of your own was left to you. You will realize you are dying before your time.",
	    	name: "Seneca, On the Brevity of Life"
	    },
	    {
	    	quote: "The greatest portion of peace of mind is doing nothing wrong. Those who lack self-control live disoriented and disturbed lives.",
	    	name: "Seneca, Moral Letters"
	    },
	    {
	    	quote: "Work nourishes noble minds.",
	    	name: "Seneca, Moral Letters"
	    },
	    {
	    	quote: "When you first rise in the morning tell yourself: I will encounter busybodies, ingrates, egomaniacs, liars, the jealous and cranks. They are all stricken with these afflictions because they don't know the difference between good and evil. Because I have understood the beauty of good and the ugliness of evil, I know that these wrong-doers are still akin to me…and that none can do me harm, or implicate me in ugliness- nor can I be angry at my relatives or hate them. For we are made for cooperation.",
	    	name: "Marcus Aurelius, Meditations"
	    },
	    {
	    	quote: "It is quite impossible to unite happiness with a yearning for what we don't have. Happiness has all that it wants, and resembling the well-fed, there shouldn't be hunger or thirst.",
	    	name: "Epictetus, Discourses"
	    },
	    {
	    	quote: "A podium and a prison is each a place, one high and the other low, but in either place your freedom of choice can be maintained if you so wish.",
	    	name: "Epictetus, Discourses"
	    },
	    {
	    	quote: "Some things are in our control, while others are not. We control our opinion, choice, desire, aversion, and, in a word, everything of our own doing. We don't control our body, property, reputation, position, and, in a word, everything not of our own doing. Even more, the things in our control are by nature free, unhindered, and unobstructed, while those not in our control are weak, slavish, can be hindered, and are not our own.",
	    	name: "Epictetus, Enchiridion"
	    },
	    {
	    	quote: "Keep constant guard over your peace of mind.",
	    	name: "Epictetus, Discourses"
	    },
	    {
	    	quote: "Who then is invincible? The one who cannot be upset by anything outside their reasoned choice.",
	    	name: "Epictetus, Discourses"
	    },
	    {
	    	quote: "Were you to live three thousand years, or even a countless multiple of that, keep in mind that no one ever loses a life other than the one they are living, and no one ever lives a life other than the one they are losing. The longest and the shortest life, then, amount to the same, for the present moment lasts the same for all and is all anyone possesses. No one can lose either the past or the future, for how can someone be deprived of what's not theirs?",
	    	name: "Marcus Aurelius, Meditations"
	    },
	    {
	    	quote: "You are afraid of dying. But come now, how is this life of yours anything but death?",
	    	name: "Seneca"
	    },
	    {
	    	quote: "The reason why we have two ears and only one mouth is so that we might listen more and talk less.",
	    	name: "Zeno"
	    },
	    {
	    	quote: "The best revenge is not to be like your enemy.",
	    	name: "Marcus Aurelius, Meditations"
	    },
	    {
	    	quote: "Look again at that dot. That's here. That's home. That's us. On it everyone you love, everyone you know, every human being you ever heard of... -on a mote of dust suspended in a sunbeam.",
	    	name: "Carl Sagan, pointing to a picture of Earth from 4 billion miles away"
	    },
	    {
	    	quote: "It's ruinous for the soul to be anxious about the future and miserable in advance of misery...",
	    	name: "Seneca"
	    },
	    {
	    	quote: "If you should ever turn your will to things outside your control in order to impress someone, be sure that you have wrecked your whole purpose in life. Be content, then, to be a philosopher in all that you do, and if you wish also to be seen as one, show yourself first that you are and you will succeed.",
	    	name: "Epictetus, Discourses"
	    },
	    {
	    	quote: "I may wish to be free from torture, but if the time comes for me to endure it, I'll wish to bear it courageously with bravery and honor.",
	    	name: "Seneca"
	    },
	    {
	    	quote: "In the time it will take to motivate yourself to begin the work, it could have already been done.",
	    	name: "Unknown"
	    },
	    {
	    	quote: "Relax, nothing is under control.",
	    	name: "Adi Da"
	    },
	    {
	    	quote: "As democracy is perfected, the office of president represents, more and more closely, the inner soul of the people. On some great and glorious day the plain folks of the land will reach their heart’s desire at last and the White House will be adorned by a downright moron",
	    	name: "H.L. Mencken, circa 1920"
	    },
	    {
	    	quote: "It is amazing that people who think we cannot afford to pay for doctors, hospitals, and medication somehow think that we can afford to pay for doctors, hospitals, medication, and a government bureaucracy to administer it.",
	    	name: "Thomas Sowell"
	    },
	    {
	    	quote: "It is no crime to be ignorant of economics, which is, after all, a specialized discipline and one that most people consider to be a ‘dismal science.’ But it is totally irresponsible to have a loud and vociferous opinion on economic subjects while remaining in this state of ignorance.",
	    	name: "Murray Rothbard"
	    },
	    {
	    	quote: "In brief, the aim of each of us to satisfy his own desires, to achieve as far as possible his own highest happiness and well-being, is best forwarded by a common means, Social Cooperation, and cannot be achieved without that means. Here, then, is the foundation on which we may build a rational system of ethics",
	    	name: "Henry Hazlitt, Foundations of Morality"
	    },
	    {
	    	quote: "My lessons weren’t specific to business, but they were fundamental values—integrity, humility, responsibility, work ethic, entrepreneurship, a thirst for knowledge, the desire to make a contribution, and concern for others—that profoundly influenced the way I do business and live my life to this day.",
	    	name: "Charles G. Koch, Good Profit"
	    },
	    {
	    	quote: "Resentment is like drinking poison and waiting for the other person to die.",
	    	name: "Olivia Fox Cabane"
	    },
	    {
	    	quote: "One of the main reasons we’re so affected by our negative thoughts is that we think our mind has an accurate grasp on reality, and that its conclusions are generally valid. This, however, is a fallacy. Our mind’s view of reality can be, and often is, completely distorted.",
	    	name: "Olivia Fox Cabane"
	    },
	    {
	    	quote: "Many who are self-taught far excel the doctors, masters, and bachelors of the most renowned universities.",
	    	name: "Ludwig Von Mises"
        }])
