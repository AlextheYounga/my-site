table_name = "books"
ActiveRecord::Base.connection.execute("Delete from #{table_name}")
ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE WHERE name='#{table_name}'")
puts "Seeding Books"
i = 1

cover_img = "win_friends_influence.jpg"
@book = Book.new({
  title: "How to Win Friends and Influence People",
  subtitle: "The Only Book You Need to Lead You to Success",
  author: "Dale Carnegie",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList How to Win Friends and Influence People by Dale Carnegie",
  book_category_id: BookCategory.find(3).id,
  book_link: "https://www.amazon.com/How-Win-Friends-Influence-People/dp/0671027034/ref=sr_1_3?crid=N7XYG8ST82NU&keywords=how+to+win+friends+and+influence+people+by+dale+carnegie&qid=1558935441&s=gateway&sprefix=how+to+win+friends%2Caps%2C187&sr=8-3",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "daily_stoic.jpg"
@book = Book.new({
  title: "The Daily Stoic",
  subtitle: "366 Meditations on Wisdom, Perseverance, and the Art of Living",
  author: "Ryan Holiday",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Daily Stoic by Ryan Holiday",
  book_category_id: BookCategory.find(2).id,
  book_link: "https://www.amazon.com/Daily-Stoic-Meditations-Wisdom-Perseverance/dp/0735211736/ref=sr_1_2?keywords=the+daily+stoic&qid=1558935533&s=gateway&sr=8-2",
  position: i,

})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "foundations_morality.jpg"
@book = Book.new({
  title: "Foundations of Morality",
  author: "Henry Hazlitt",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Foundations of Morality by Henry Hazlitt",
  book_category_id: BookCategory.find(2).id,
  book_link: "https://mises.org/library/foundations-morality",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "the_antidote.jpg"
@book = Book.new({
  title: "The Antidote",
  subtitle: "Happiness For People Who Can't Stand Positive Thinking",
  author: "Oliver Burkeman",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Antidote: Happiness For People Who Can't Stand Positive Thinking by Oliver Burkeman",
  book_category_id: BookCategory.find(1).id,
  book_link: "https://www.amazon.com/Antidote-Happiness-People-Positive-Thinking/dp/0865478015/ref=sr_1_1?s=books&ie=UTF8&qid=1515919681&sr=1-1&keywords=the+antidote+happiness+for+people+who+can%27t+stand+positive+thinking",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "square_one.jpg"
@book = Book.new({
  title: "Square One",
  subtitle: "The Foundations of Knowledge",
  author: "Steve Patterson",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Square One: The Foundations of Knowledge by Steve Patterson",
  book_category_id: BookCategory.find(2).id,
  book_link: "https://www.amazon.com/Square-One-Foundations-Steve-Patterson-ebook/dp/B01M9JL27L/ref=sr_1_1?ie=UTF8&qid=1515980663&sr=8-1&keywords=square+one+steve+patterson",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "making_economic_sense.jpg"
@book = Book.new({
  title: "Making Economic Sense",
  author: "Murray Rothbard",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Making Economic Sense by Murray Rothbard",
  book_category_id: BookCategory.find(4).id,
  book_link: "https://mises.org/library/making-economic-sense",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "rich_dad.jpg"
@book = Book.new({
  title: "Rich Dad Poor Dad",
  author: "Robert Kiyosaki",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Rich Dad Poor Dad by Robert Kiyosaki",
  book_category_id: BookCategory.find(13).id,
  book_link: "https://www.amazon.com/Rich-Robert-Lechter-Sharon-Kiyosaki/dp/3898798828/ref=sr_1_2",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "good_profit.jpg"
@book = Book.new({
  title: "Good Profit",
  subtitle: "How Creating Value for Others Built One of the World's Most Successful Companies",
  author: "Charles Koch",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Good Profit by Charles Koch",
  book_category_id: BookCategory.find(13).id,
  book_link: "https://www.amazon.com/Good-Profit-Creating-Successful-Companies/dp/1101904135/ref=sr_1_1?s=books&ie=UTF8&qid=1515919796&sr=1-1&keywords=good+profit+charles+koch",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "meditations.jpg"
@book = Book.new({
  title: "Meditations",
  subtitle: "",
  author: "Marcus Aurelius",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Meditations by Marcus Aurelius",
  book_category_id: BookCategory.find(1).id,
  book_link: "https://www.amazon.com/Meditations-Marcus-Aurelius/dp/1545565678/ref=sr_1_4?crid=2W17I979DHML0&keywords=meditations+marcus+aurelius&qid=1558935312&s=gateway&sprefix=meditations+marcus+aur%2Caps%2C281&sr=8-4",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "good_life.jpg"
@book = Book.new({
  title: "A Guide to the Good Life",
  subtitle: "The Ancient Art of Stoic Joy",
  author: "William B. Irvine",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList A Guide to the Good Life by William B. Irvine",
  book_category_id: BookCategory.find(1).id,
  book_link: "https://www.amazon.com/Guide-Good-Life-Ancient-Stoic/dp/0195374614/ref=sr_1_1?s=books&ie=UTF8&qid=1515918746&sr=1-1&keywords=a+guide+to+the+good+life",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "social_anxiety.jpg"
@book = Book.new({
  title: "The Solution to Social Anxiety",
  subtitle: "Break Free from the Shyness That Holds You Back",
  author: "Dr. Aziz Gazipura",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Solution to Social Anxiety by Dr. Aziz Gazipura",
  book_category_id: BookCategory.find(1).id,
  book_link: "https://www.amazon.com/Solution-Social-Anxiety-Break-Shyness-ebook/dp/B00F5IU5CU/ref=sr_1_2_sspa?s=books&ie=UTF8&qid=1515919521&sr=1-2-spons&keywords=solution+to+social+anxiety&psc=1",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "notes_on_democracy.jpg"
@book = Book.new({
  title: "Notes on Democracy",
  author: "H.L. Mencken",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Notes on Democracy by H.L. Mencken",
  book_category_id: BookCategory.find(12).id,
  book_link: "https://www.amazon.com/Notes-Democracy-Large-Print-Mencken/dp/1494288648/ref=sr_1_1?s=books&ie=UTF8&qid=1515919184&sr=1-1&keywords=notes+on+democracy",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "what_is_real.jpg"
@book = Book.new({
  title: "What is Real",
  subtitle: "The Unfinished Quest for the Meaning of Quantum Physics",
  author: "Adam Becker",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList What is Real by Adam Becker",
  book_category_id: BookCategory.find(8).id,
  book_link: "https://www.amazon.com/What-Real-Unfinished-Meaning-Quantum/dp/0465096050",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "waking_up.jpg"
@book = Book.new({
  title: "Waking Up",
  subtitle: "A Guide to Spirituality Without Religion",
  author: "Sam Harris",

  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Waking Up by Sam Harris",
  book_category_id: BookCategory.find(2).id,
  book_link: "https://www.amazon.com/Waking-Up-Spirituality-Without-Religion/dp/1451636024/ref=sr_1_1?s=books&ie=UTF8&qid=1515920029&sr=1-1&keywords=waking+up+sam+harris",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "out_of_your_mind.jpg"
@book = Book.new({
  title: "Out of Your Mind",
  subtitle: "Essential Listening from the Alan Watts Archives",
  author: "Alan Watts",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Out of Your Mind",
  book_category_id: BookCategory.find(2).id,
  book_link: "https://www.amazon.com/Out-of-Your-Mind/dp/B0162WIRKY/ref=sr_1_2?ie=UTF8&qid=1517010662&sr=8-2&keywords=out+of+your+mind+by+alan+watts",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "youre_it.jpg"
@book = Book.new({
  title: "You're It",
  subtitle: "On Hiding, Seeking, and Being Found",
  book_category_id: BookCategory.find(2).id,
  book_link: "https://www.amazon.com/Youre-Hiding-Seeking-Being-Found/dp/1591797349",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList You're It by Alan Watts",
  author: "Alan Watts",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "street_smarts.jpg"
@book = Book.new({
  title: "Street Smarts",
  book_category_id: BookCategory.find(6).id,
  book_link: "https://www.amazon.com/Street-Smarts-Adventures-Road-Markets/dp/0307986071/ref=sr_1_1?s=books&ie=UTF8&qid=1515923486&sr=1-1&keywords=street+smarts+jim+rogers",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Street Smarts by Jim Rogers",
  author: "Jim Rogers",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "charisma_myth.jpg"
@book = Book.new({
  title: "The Charisma Myth",
  subtitle: "How Anyone Can Master the Art and Science of Personal Magnetism",
  book_category_id: BookCategory.find(3).id,
  book_link: "https://www.amazon.com/Charisma-Myth-Science-Personal-Magnetism/dp/1591845947/ref=sr_1_1?s=books&ie=UTF8&qid=1515919947&sr=1-1&keywords=The+Charisma+Myth+by+Olivia+Fox+Cabane",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Charisma Myth by Olivia Fox Cabane",
  author: "Olivia Fox Cabane",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "madness_of_crowds.jpg"
@book = Book.new({
  title: "Extraordinary Popular Delusions and the Madness of Crowds",
  book_category_id: BookCategory.find(5).id,
  book_link: "https://www.amazon.com/Extraordinary-Popular-Delusions-Madness-Crowds/dp/1463740514/ref=sr_1_1?s=books&ie=UTF8&qid=1515920340&sr=1-1&keywords=extraordinary+popular+delusions+and+the+madness+of+crowds",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Extraordinary Popular Delusions and the Madness of Crowds by Charles Mackay",
  author: "Charles Mackay",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "troublesome_inheritance.jpg"
@book = Book.new({
  title: "A Troublesome Inheritance",
  subtitle: "Genes, Race, and Human History",
  book_category_id: BookCategory.find(8).id,
  book_link: "https://www.amazon.com/Troublesome-Inheritance-Genes-Human-History/dp/0143127160/ref=sr_1_1?s=books&ie=UTF8&qid=1515921233&sr=1-1&keywords=a+troublesome+inheritance+by+nicholas+wade",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList A Troublesome Inheritance by Nicholas Wade",
  author: "Nicholas Wade",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "why_we_sleep.jpg"
@book = Book.new({
  title: "Why We Sleep",
  subtitle: "Unlocking the Power of Sleep and Dreams",
  book_category_id: BookCategory.find(8).id,
  book_link: "https://www.amazon.com/Why-We-Sleep-Unlocking-Dreams/dp/1501144316",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Why We Sleep by Matthew Walker, PhD",
  author: "Matthew Walker, PhD",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "black_rednecks.jpg"
@book = Book.new({
  title: "Black Rednecks and White Liberals",
  subtitle: "",
  book_category_id: BookCategory.find(5).id,
  book_link: "https://www.amazon.com/Black-Rednecks-Liberals-Thomas-Sowell/dp/1594030863/ref=tmm_hrd_swatch_0?_encoding=UTF8&qid=1573020215&sr=8-1",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Black Rednecks and White Liberals by Thomas Sowell",
  author: "Thomas Sowell",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "fools_errand.jpg"
@book = Book.new({
  title: "Fool's Errand",
  subtitle: "Time to End the War in Afghanistan",
  book_category_id: BookCategory.find(5).id,
  book_link: "https://www.amazon.com/Fools-Errand-Time-End-Afghanistan/dp/1548650218",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList https://images-na.ssl-images-amazon.com/images/I/51zrL6zS1ZL._SX331_BO1,204,203,200_.jpg",
  author: "Scott Horton",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "failure_new_economics.jpg"
@book = Book.new({
  title: "The Failure of the New Economics",
  subtitle: "An Analysis of the Keynesian Fallacies",
  book_category_id: BookCategory.find(4).id,
  book_link: "https://mises.org/library/failure-new-economics-0",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Failure of the New Economics by Henry Hazlitt",
  author: "Henry Hazlitt",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "righteous_mind.jpg"
@book = Book.new({
  title: "The Righteous Mind",
  subtitle: "Why Good People are Divided by Politics and Religion",
  book_category_id: BookCategory.find(9).id,
  book_link: "https://www.amazon.com/Righteous-Mind-Divided-Politics-Religion/dp/0307455777/ref=sr_1_1?s=books&ie=UTF8&qid=1515921478&sr=1-1&keywords=jonathan+haidt+the+righteous+mind",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Righteous Mind by Jonathan Haidt",
  author: "Jonathan Haidt",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "do_what_you_are.jpg"
@book = Book.new({
  title: "Do What You Are",
  subtitle: "Discover the Perfect Career for You Through the Secrets of Personality Type",
  book_category_id: BookCategory.find(9).id,
  book_link: "https://www.amazon.com/Do-What-You-Are-Personality/dp/031623673X/ref=sr_1_2?s=books&ie=UTF8&qid=1515924039&sr=1-2&keywords=do+what+you+are+paul+tieger",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Do What You Are by Paul D. Tieger, Barbara Barron, and Kelly Tieger",
  author: "Paul D. Tieger, Barbara Barron, and Kelly Tieger",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "mindfulness_plain_english.jpg"
@book = Book.new({
  title: "Mindfulness in Plain English",
  book_category_id: BookCategory.find(10).id,
  book_link: "https://www.amazon.com/Mindfulness-Plain-English-Revised-Expanded/dp/0861713214/ref=sr_1_3?s=books&ie=UTF8&qid=1517263300&sr=1-3&keywords=mindfulness+in+plain+english",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Mindfulness in Plain English by Bhante Gunaratana",
  author: "Bhante Gunaratana",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "deep_work.jpg"
@book = Book.new({
  title: "Deep Work",
  subtitle: "Rules for Focused Success in a Distracted World",
  book_category_id: BookCategory.find(10).id,
  book_link: "https://www.amazon.com/Deep-Work-Focused-Success-Distracted/dp/1455586692/ref=sr_1_1?s=books&ie=UTF8&qid=1515921725&sr=1-1&keywords=cal+newport+deep+work",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Deep Work by Cal Newport",
  author: "Cal Newport",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "deep_thoughts.jpg"
@book = Book.new({
  title: "Deep Thoughts",
  subtitle: "Inspiration for the Uninspired",
  book_category_id: BookCategory.find(14).id,
  book_link: "https://www.amazon.com/Deep-Thoughts-Inspiration-Jack-Handey/dp/0425133656",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Deep Thoughts by Jack Handey",
  author: "Jack Handey",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "total_recall.jpg"
@book = Book.new({
  title: "Total Recall",
  subtitle: "My Unbelievably True Life Story",
  book_category_id: BookCategory.find(11).id,
  book_link: "https://www.amazon.com/Total-Recall-Unbelievably-True-Story/dp/1451662440/ref=sr_1_1?s=books&ie=UTF8&qid=1521363393&sr=1-1&keywords=total+recall+arnold+schwarzenegger",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Total Recall by Arnold Schwarzenegger",
  author: "Arnold Schwarzenegger",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "hot_commodities.jpg"
@book = Book.new({
  title: "Hot Commodities",
  subtitle: "How Anyone Can Invest Profitably in the World's Best Market",
  book_category_id: BookCategory.find(6).id,
  book_link: "https://www.amazon.com/Hot-Commodities-Anyone-Invest-Profitably-ebook/dp/B000FC2OO8/ref=sr_1_1?s=digital-text&ie=UTF8&qid=1515983311&sr=1-1&keywords=hot+commodities+jim+rogers",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Hot Commodities by Jim Rogers",
  author: "Jim Rogers",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "millionaire_next_door.jpg"
@book = Book.new({
  title: "The Millionaire Next Door",
  subtitle: "The Surprising Secrets of America's Wealthy",
  book_category_id: BookCategory.find(6).id,
  book_link: "https://www.amazon.com/Millionaire-Next-Door-Surprising-Americas/dp/1589795474/ref=sr_1_1?s=books&ie=UTF8&qid=1551049716&sr=1-1&keywords=millionaire+next+door",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Millionaire Next Door by Thomas J. Stanley & William D. Danko",
  author: "Thomas J. Stanley & William D. Danko",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "road_to_ruin.jpg"
@book = Book.new({
  title: "The Road to Ruin",
  subtitle: "The Global Elites' Secret Plan for the Next Financial Crisis",
  book_category_id: BookCategory.find(12).id,
  book_link: "https://www.amazon.com/Road-Ruin-Global-Elites-Financial/dp/1591848083/ref=sr_1_1?s=books&ie=UTF8&qid=1515984429&sr=1-1&keywords=The+Road+to+Ruin+by+James+Rickards",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Road to Ruin by Jim Rickards",
  author: "Jim Rickards",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "enlightenment_now.jpg"
@book = Book.new({
  title: "Enlightenment Now",
  subtitle: "The Case for Reason, Science, Humanism, and Progress",
  book_category_id: BookCategory.find(8).id,
  book_link: "https://www.amazon.com/Enlightenment-Now-Science-Humanism-Progress/dp/0525427570/ref=sr_1_2?s=books&ie=UTF8&qid=1526181530&sr=1-2&keywords=enlightenment+now+by+steven+pinker",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Enlightenment Now by Steven Pinker",
  author: "Steven Pinker",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "willpower_instinct.jpg"
@book = Book.new({
  title: "The Willpower Instinct",
  subtitle: "How Self Control Works, Why it Matters, and What You Can Do to Get More of It",
  book_category_id: BookCategory.find(10).id,
  book_link: "https://www.amazon.com/Willpower-Instinct-Self-Control-Works-Matters/dp/1583335080/ref=sr_1_2?s=books&ie=UTF8&qid=1515923129&sr=1-2&keywords=willpower+instinct+by+kelly+mcgonigal",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Willpower Instinct by Kelly McGonigal, Phd",
  author: "Kelly McGonigal, Phd",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "economics_one_lesson.jpg"
@book = Book.new({
  title: "Economics in One Lesson",
  subtitle: "The Shortest and Surest Way to Understand Basic Economics",
  book_category_id: BookCategory.find(4).id,
  book_link: "https://www.amazon.com/Henry-Hazlitt-Economics-One-Lesson/dp/B004LNZ5H0/ref=sr_1_5?s=books&ie=UTF8&qid=1515985408&sr=1-5&keywords=economics+in+one+lesson+henry+hazlitt",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Economics in One Lesson by Henry Hazlitt",
  author: "Henry Hazlitt",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "richest_man_babylon.jpg"
@book = Book.new({
  title: "The Richest Man in Babylon",
  book_category_id: BookCategory.find(6).id,
  book_link: "https://www.amazon.com/Richest-Man-Babylon-George-Clason/dp/1640950494/ref=sr_1_1_sspa?keywords=richest+man+in+babylon&qid=1555294196&s=gateway&sr=8-1-spons&psc=1",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Richest Man in Babylon by George Clason",
  author: "George Clason",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "gulag.jpg"
@book = Book.new({
  title: "The Gulag Archipeligo",
  subtitle: "1918-1956: An Experiment in Literary Investigation",
  book_category_id: BookCategory.find(5).id,
  book_link: "https://www.amazon.com/Gulag-Archipelago-Aleksandr-Solzhenitsyn/dp/1843430851",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Gulag Archipeligo by Alexander Solzhenitsyn",
  author: "Alexander Solzhenitsyn",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "what_is_life.jpg"
@book = Book.new({
  title: "What is Life?",
  book_category_id: BookCategory.find(8).id,
  book_link: "https://www.amazon.com/What-Life-Autobiographical-Sketches-Classics/dp/1107604664/ref=sr_1_1",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList What is Life by Erwin Schrodinger",
  author: "Erwin Schrodinger",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "free_will.jpg"
@book = Book.new({
  title: "Free Will",
  book_category_id: BookCategory.find(2).id,
  book_link: "https://www.amazon.com/Free-Will-Harris-Sam-Paperback/dp/B011SJZJ8O/ref=sr_1_3",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Free Will by Sam Harris",
  author: "Sam Harris",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "influence.jpg"
@book = Book.new({
  title: "Influence",
  subtitle: "The Psychology of Persuasion",
  book_category_id: BookCategory.find(9).id,
  book_link: "https://www.amazon.com/Influence-Psychology-Persuasion-Robert-Cialdini/dp/006124189X/ref=sr_1_1",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Influence by Robert Cialdini",
  author: "Robert Cialdini",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "mans_search_meaning.jpg"
@book = Book.new({
  title: "Man's Search for Meaning",
  book_category_id: BookCategory.find(9).id,
  book_link: "https://www.amazon.com/Mans-Search-Meaning-Viktor-Frankl/dp/0807014273/ref=sr_1_1",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Man's Search for Meaning by Viktor Frankl",
  author: "Viktor Frankl",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "ordinary_men.jpg"
@book = Book.new({
  title: "Ordinary Men",
  subtitle: "Reserve Police Battalion 101 and the Final Solution in Poland",
  book_category_id: BookCategory.find(5).id,
  book_link: "https://www.amazon.com/Ordinary-Men-Reserve-Battalion-Solution/dp/0062303023/ref=pd_lpo_sbs_14_img_0?_encoding=UTF8&psc=1&refRID=905FVFHBW6S35NKN4CWB",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Ordinary Men by Christopher R. Browning",
  author: "Christopher R. Browning",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "fatal_conceit.jpg"
@book = Book.new({
  title: "The Fatal Conceit",
  subtitle: "The Errors of Socialism",
  book_category_id: BookCategory.find(4).id,
  book_link: "https://www.amazon.com/Fatal-Conceit-Errors-Socialism-Collected/dp/0226320669/ref=sr_1_1?s=books&ie=UTF8&qid=1551050285&sr=1-1&keywords=fatal+conceit+hayek",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Fatal Conceit by F.A. Hayek",
  author: "F.A. Hayek",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "socialism.jpg"
@book = Book.new({
  title: "Socialism",
  subtitle: "An Economic and Sociological Analysis",
  book_category_id: BookCategory.find(4).id,
  book_link: "https://mises.org/library/socialism-economic-and-sociological-analysis",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Socialism by Ludwig Von Mises",
  author: "Ludwig Von Mises",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "body_language.jpg"
@book = Book.new({
  title: "The Power of Body Language",
  subtitle: "An Ex-FBI Agent's System for Speed Reading People",
  book_category_id: BookCategory.find(9).id,
  book_link: "https://www.amazon.com/Power-Body-Language-Ex-FBI-Speed-Reading/dp/B00OH795TO/ref=sr_1_2?ie=UTF8&qid=1515983461&sr=8-2&keywords=the+power+of+body+language+joe+navarro",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Power of Body Language by Joe Navarro",
  author: "Joe Navarro",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "government_money.jpg"
@book = Book.new({
  title: "What Has Government Done to Our Money",
  subtitle: "and The Case for a 100 Percent Gold Dollar",
  book_category_id: BookCategory.find(4).id,
  book_link: "https://mises.org/library/what-has-government-done-our-money",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList What Has Government Done to Our Money by Murray Rothbard",
  author: "Murray Rothbard",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "computer_science_distilled.jpg"
@book = Book.new({
  title: "Computer Science Distilled",
  subtitle: "Learn the Art of Computational Problem Solving",
  book_category_id: BookCategory.find(7).id,
  book_link: "https://www.amazon.com/Computer-Science-Distilled-Computational-Problems/dp/0997316020",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Computer Science Distilled by Wladston Ferreira Filho",
  author: "Wladston Ferreira Filho",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "show_your_work.jpg"
@book = Book.new({
  title: "Show Your Work",
  subtitle: "10 Ways to Share Your Creativity and Get Discovered",
  book_category_id: BookCategory.find(10).id,
  book_link: "https://www.amazon.com/Show-Your-Work-Austin-Kleon/dp/076117897X/ref=sr_1_1?s=books&ie=UTF8&qid=1520050953&sr=1-1&keywords=show+your+work",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Show Your Work by Austin Kleon",
  author: "Austin Kleon",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "moonwalking.jpg"
@book = Book.new({
  title: "Moonwalking With Einstein",
  subtitle: "The Art and Science of Remembering Everything",
  book_category_id: BookCategory.find(8).id,
  book_link: "https://www.amazon.com/Moonwalking-Einstein-Science-Remembering-Everything/dp/0143120530/ref=sr_1_1?s=books&ie=UTF8&qid=1551049996&sr=1-1&keywords=moonwalking+with+einstein+by+joshua+foer",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Moonwalking With Einstein by Joshua Foer",
  author: "Joshua Foer",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "basic_econ.jpg"
@book = Book.new({
  title: "Basic Economics",
  subtitle: "A Common Sense Guide to the Economy",
  book_category_id: BookCategory.find(4).id,
  book_link: "https://www.amazon.com/Basic-Economics-Thomas-Sowell/dp/0465060730/ref=sr_1_1?hvadid=241666587059&hvdev=c&hvlocphy=9028905&hvnetw=g&hvpos=1t1&hvqmt=e&hvrand=17298452046633619559&hvtargid=kwd-437964245&keywords=basic+economics+thomas+sowell&qid=1555298558&s=gateway&sr=8-1",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Basic Economics by Thomas Sowell",
  author: "Thomas Sowell",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "rental_property.jpg"
@book = Book.new({
  title: "The Book on Rental Property Investing",
  subtitle: "How to new wealth and passive income through smart buy & hold real estate investing",
  book_category_id: BookCategory.find(6).id,
  book_link: "https://www.amazon.com/Book-Rental-Property-Investing-Intelligent/dp/099071179X/ref=sr_1_3?s=books&ie=UTF8&qid=1533872549&sr=1-3&keywords=rental+property+investing",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Book on Rental Property Investing by Brandon Turner",
  author: "Brandon Turner",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "steal_the_show.jpg"
@book = Book.new({
  title: "Steal the Show",
  subtitle: "How to Guarantee a Standing Ovation for All the Performances in Your Life",
  book_category_id: BookCategory.find(10).id,
  book_link: "https://www.amazon.com/Steal-Show-Interviews-Deal-Closing-Performances/dp/0544800842/ref=sr_1_1?s=books&ie=UTF8&qid=1515984539&sr=1-1&keywords=Steal+the+Show+by+Michael+Port",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Steal the Show by Michael Port",
  author: "Michael Port",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "crucial_conversations.jpg"
@book = Book.new({
  title: "Crucial Conversations",
  subtitle: "Tools for Talking When the Stakes are High",
  book_category_id: BookCategory.find(3).id,
  book_link: "https://www.amazon.com/Crucial-Conversations-Talking-Stakes-Second/dp/0071771328/ref=sr_1_1?s=books&ie=UTF8&qid=1515984205&sr=1-1&keywords=crucial+conversations",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Crucial Conversations by Kelly Patterson",
  author: "Kelly Patterson",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "inflation.jpg"
@book = Book.new({
  title: "What You Should Know About Inflation",
  book_category_id: BookCategory.find(4).id,
  book_link: "https://mises.org/library/what-you-should-know-about-inflation-0",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList What You Should Know About Inflation by Henry Hazlitt",
  author: "Henry Hazlitt",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "behave.jpg"
@book = Book.new({
  title: "Behave",
  subtitle: "The Biology of Humans at Our Best and at Our Worst",
  book_category_id: BookCategory.find(8).id,
  book_link: "https://www.amazon.com/Behave-Biology-Humans-Best-Worst-ebook/dp/B01IAUGC5S/ref=sr_1_1?s=digital-text&ie=UTF8&qid=1515981537&sr=1-1&keywords=behave+robert+sapolsky",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Behave by Robert M. Sapolsky",
  author: "Robert M. Sapolsky",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "conflict_visions.jpg"
@book = Book.new({
  title: "A Conflict of Visions",
  subtitle: "Ideological Origins of Political Struggles",
  book_category_id: BookCategory.find(4).id,
  book_link: "https://www.amazon.com/Conflict-Visions-Ideological-Political-Struggles/dp/0465002056/ref=sr_1_1?s=books&ie=UTF8&qid=1551050535&sr=1-1&keywords=conflict+of+visions",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList A Conflict of Visions by Thomas Sowell",
  author: "Thomas Sowell",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "great_depression.jpg"
@book = Book.new({
  title: "America's Great Depression",
  book_category_id: BookCategory.find(5).id,
  book_link: "https://mises.org/library/americas-great-depression",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList America's Great Depression by Murray Rothbard",
  author: "Murray Rothbard",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "history_of_man.jpg"
@book = Book.new({
  title: "A Short History of Man",
  subtitle: "Progress and Decline",
  book_category_id: BookCategory.find(5).id,
  book_link: "https://www.amazon.com/Short-History-Man-Progress-Decline/dp/1610165918/ref=sr_1_1?s=books&ie=UTF8&qid=1515984984&sr=1-1&keywords=a+short+history+of+man+hoppe",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList A Short History of Man by Hans-Hermann Hoppe",
  author: "Hans-Hermann Hoppe",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "ceo_tightrope.jpg"
@book = Book.new({
  title: "The CEO Tightrope",
  subtitle: "How to Master the Balancing Act of a CEO",
  book_category_id: BookCategory.find(13).id,
  book_link: "https://www.amazon.com/CEO-Tightrope-Master-Balancing-Successful/dp/1626341060/ref=sr_1_1?s=books&ie=UTF8&qid=1515986582&sr=1-1&keywords=the+ceo+tightrope+by+joel+trammell",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The CEO Tightrope by Joel Trammell",
  author: "Joel Trammell",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "bull_moves.jpg"
@book = Book.new({
  title: "The Little Book of Bull Moves",
  subtitle: "How to Keep Your Portfolio Up When the Market is Up, Down, or Sideways",
  book_category_id: BookCategory.find(6).id,
  book_link: "https://www.amazon.com/Little-Book-Moves-Updated-Expanded/dp/0470643994/ref=sr_1_2?s=books&ie=UTF8&qid=1515983796&sr=1-2&keywords=the+little+book+of+bull+moves+peter+schiff",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Little Book of Bull Moves by Peter Schiff",
  author: "Peter Schiff",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "4_hour.jpg"
@book = Book.new({
  title: "The 4-Hour Workweek",
  subtitle: "Escape 9-5, Live Anywhere, and Join the New Rich",
  book_category_id: BookCategory.find(13).id,
  book_link: "https://www.amazon.com/4-Hour-Workweek-Escape-Live-Anywhere/dp/0307465357/ref=sr_1_1?s=books&ie=UTF8&qid=1515985483&sr=1-1&keywords=the+four+hour+work+week",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The 4 Hour Workweek by Tim Ferriss",
  author: "Tim Ferriss",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "48_laws.jpg"
@book = Book.new({
  title: "The 48 Laws of Power",
  book_category_id: BookCategory.find(9).id,
  book_link: "https://www.amazon.com/48-Laws-Power-Robert-Greene/dp/0140280197/ref=sr_1_1?keywords=48+laws+of+power&qid=1555294105&s=gateway&sr=8-1",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The 48 Laws of Power by Robert Greene",
  author: "Robert Greene",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "iron_john.jpg"
@book = Book.new({
  title: "Iron John",
  subtitle: "A Book About Men",
  book_category_id: BookCategory.find(14).id,
  book_link: "https://www.amazon.com/Iron-John-Book-about-Men/dp/0306824264/ref=dp_ob_title_bk",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Iron John by Robert Bly",
  author: "Robert Bly",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "hawk.jpg"
@book = Book.new({
  title: "Hawk",
  subtitle: "Occupation: Skateboarder",
  book_category_id: BookCategory.find(11).id,
  book_link: "https://www.amazon.com/Hawk-Occupation-Skateboarder-Tony/dp/0060958316/ref=sr_1_2?ie=UTF8&qid=1521363258&sr=8-2&keywords=hawk+by+tony+hawk&dpID=51TnMCb8ToL&preST=_SY291_BO1,204,203,200_QL40_&dpSrc=srch",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Hawk by Tony Hawk",
  author: "Tony Hawk",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "intelligent_investor.jpg"
@book = Book.new({
  title: "The Intelligent Investor",
  subtitle: "The Definitive Book on Value Investing",
  book_category_id: BookCategory.find(6).id,
  book_link: "https://www.amazon.com/Intelligent-Investor-Definitive-Investing-Essentials/dp/0060555661/ref=sr_1_1?s=books&ie=UTF8&qid=1515987281&sr=1-1&keywords=the+intelligent+investor+by+benjamin+graham",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Intelligent Investor by Benjamin Graham",
  author: "Benjamin Graham",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "pyrates.jpg"
@book = Book.new({
  title: "A General History of the Pyrates",
  subtitle: "From Their First Rise and Settlement in the Island of Providence, to the Present",
  book_category_id: BookCategory.find(5).id,
  book_link: "https://www.amazon.com/General-History-Pyrates-Settlement-Providence/dp/B01M3YA557/ref=tmm_aud_swatch_0?_encoding=UTF8&qid=1573021706&sr=8-1",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList A General History of the Pyrates by Daniel Defoe",
  author: "Daniel Defoe",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "lean_startup.jpg"
@book = Book.new({
  title: "The Lean Startup",
  subtitle: "How Today's Entrepreneurs Use Continuous Innovation to new Radically Successful Businesses",
  book_category_id: BookCategory.find(13).id,
  book_link: "https://www.amazon.com/Lean-Startup-Entrepreneurs-Continuous-Innovation/dp/0307887898/ref=sr_1_3?s=books&ie=UTF8&qid=1515983642&sr=1-3&keywords=the+lean+startup+eric+ries",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Lean Startup by Eric Ries",
  author: "Eric Ries",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "politically_incorrect.jpg"
@book = Book.new({
  title: "The Politically Incorrect Guide to American History",
  book_category_id: BookCategory.find(5).id,
  book_link: "https://www.amazon.com/Politically-Incorrect-Guide-American-History/dp/B000CCE4JE/ref=sr_1_1?ie=UTF8&qid=1517017239&sr=8-1&keywords=politically+incorrect+guide+to+american+history",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Politically Correct Guide to American History by Thomas e. Woods",
  author: "Thomas E. Woods",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "progressive_era.jpg"
@book = Book.new({
  title: "The Progressive Era",
  book_category_id: BookCategory.find(5).id,
  book_link: "https://www.amazon.com/Progressive-Era-Murray-Rothbard-ebook/dp/B076B4SW5T/ref=sr_1_1?s=books&ie=UTF8&qid=1551050667&sr=1-1&keywords=progressive+era+murray",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Progressive Era by Murray N. Rothbard",
  author: "Murray N. Rothbard",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "bucaneer.jpg"
@book = Book.new({
  title: "The Buccaneers of America",
  book_category_id: BookCategory.find(5).id,
  book_link: "https://www.amazon.com/Buccaneers-America-Alexander-Exquemelin/dp/1537698621/ref=sr_1_1_sspa?crid=3ATUWUL7J53GB&keywords=buccaneers+of+america&qid=1562205455&s=books&sprefix=bucanneers+of%2Cstripbooks%2C164&sr=1-1-spons&psc=1",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Buccaneers of America by Alexander O. Exquemelin",
  author: "Alexander O. Exquemelin",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "sell_is_human.jpg"
@book = Book.new({
  title: "To Sell is Human",
  subtitle: "The Surprising Truth About Moving Others",
  book_category_id: BookCategory.find(13).id,
  book_link: "https://www.amazon.com/Sell-Human-Surprising-Moving-Others/dp/1594631905/ref=sr_1_3?s=books&ie=UTF8&qid=1515985359&sr=1-3&keywords=to+sell+is+human",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList To Sell is Human by Daniel H. Pink",
  author: "Daniel H. Pink",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "born_for_this.jpg"
@book = Book.new({
  title: "Born for This",
  book_category_id: BookCategory.find(13).id,
  book_link: "https://www.amazon.com/Born-This-Find-Work-Meant/dp/1101903988/ref=sr_1_1?s=books&ie=UTF8&qid=1515985831&sr=1-1&keywords=born+for+this+chris+guillebeau",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Born for This by Chris Guillebeau",
  author: "Chris Guillebeau",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "anatomy_of_state.jpg"
@book = Book.new({
  title: "Anatomy of the State",
  book_category_id: BookCategory.find(12).id,
  book_link: "https://mises.org/library/anatomy-state",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Anatomy of the State by Murray Rothbard",
  author: "Murrary Rothbard",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "100_startup.jpg"
@book = Book.new({
  title: "The $100 Startup",
  subtitle: "Reinvent the Way You Make a Living, Do What You Love, and new a New Future",
  book_category_id: BookCategory.find(13).id,
  book_link: "https://www.amazon.com/100-Startup-Reinvent-Living-new/dp/0307951529/ref=sr_1_1?s=books&ie=UTF8&qid=1515986114&sr=1-1&keywords=the+%24100+startup+by+chris+guillebeau",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The $100 Startup by Chris Guillebeau",
  author: "Chris Guillebeau",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "infinite_banking.jpg"
@book = Book.new({
  title: "Becoming Your Own Banker",
  subtitle: "Unlock the Infinite Banking Concept",
  book_category_id: BookCategory.find(6).id,
  book_link: "https://www.amazon.com/Becoming-Your-Banker-Nelson-Nash-ebook/dp/B0080K8EL4",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Becoming Your Own Banker by R. Nelson Nash",
  author: "R. Nelson Nash",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "the_law.jpg"
@book = Book.new({
  title: "The Law",
  book_category_id: BookCategory.find(4).id,
  book_link: "https://www.amazon.com/Law-Frederic-Bastiat/dp/1440496064/ref=sr_1_1_sspa?crid=7ZMH94ILX0L6&keywords=the+law+by+frederic+bastiat&qid=1555294381&s=books&sprefix=the+law+by+%2Cstripbooks%2C186&sr=1-1-spons&psc=1",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Law by Frederic Bastiat",
  author: "Frederic Bastiat",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "zebras_dont_get_ulcers.jpg"
@book = Book.new({
  title: "Why Zebras Don't Get Ulcers",
  subtitle: "The Acclaimed Guide to Stress, Stress-Related Diseases, and Coping",
  book_category_id: BookCategory.find(8).id,
  book_link: "https://www.amazon.com/Why-Zebras-Dont-Ulcers-Third/dp/0805073698/ref=sr_1_1?s=books&ie=UTF8&qid=1515986523&sr=1-1&keywords=Why+Zebras+Don%27t+Get+Ulcers+by+Robert+M.+Sapolsky",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Why Zebras Don't Get Ulcers by Robert M. Sapolsky",
  author: "Robert M. Sapolsky",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "three_languages_politics.jpg"
@book = Book.new({
  title: "The Three Languages of Politics",
  subtitle: "Talking Across the Political Divides",
  book_category_id: BookCategory.find(12).id,
  book_link: "https://www.amazon.com/Three-Languages-Politics-Talking-Political/dp/1944424466/ref=sr_1_1?s=books&ie=UTF8&qid=1515986807&sr=1-1&keywords=The+Three+Languages+of+Politics+by+Arnold+Kling",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList The Three Languages of Politics by Arnold Kling",
  author: "Arnold Kling",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "never_eat_alone.jpg"
@book = Book.new({
  title: "Never Eat Alone",
  subtitle: "And Other Secrets to Success, One Relationship at a Time",
  book_category_id: BookCategory.find(3).id,
  book_link: "https://www.amazon.com/Never-Eat-Alone-Expanded-Updated/dp/0385346654/ref=sr_1_1?s=books&ie=UTF8&qid=1515987002&sr=1-1&keywords=never+eat+alone+by+keith+ferrazzi",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Never Eat Alone by Keith Ferrazzi",
  author: "Keith Ferrazzi",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "darkness_visible.jpg"
@book = Book.new({
  title: "Darkness Visible",
  subtitle: "A Memoir of Madness",
  book_category_id: BookCategory.find(14).id,
  book_link: "https://www.amazon.com/Darkness-Visible-Madness-William-Styron/dp/0679736395/ref=sr_1_1?s=books&ie=UTF8&qid=1515987132&sr=1-1&keywords=darkness+visible+william+styron",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Darkness Visible by William Styron",
  author: "William Styron",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "ignore_everybody.jpg"
@book = Book.new({
  title: "Ignore Everybody",
  subtitle: "And 39 Other Keys to Creativity",
  book_category_id: BookCategory.find(14).id,
  book_link: "https://www.amazon.com/Ignore-Everybody-Other-Keys-Creativity/dp/159184259X/ref=sr_1_1?s=books&ie=UTF8&qid=1515985570&sr=1-1&keywords=Ignore+Everybody+by+Hugh+Macleod",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Ignore Everybody by Hugh Macleod",
  author: "Hugh MacLeod",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "economic_controversies.jpg"
@book = Book.new({
  title: "Economic Controversies",
  book_category_id: BookCategory.find(4).id,
  book_link: "https://mises.org/library/economic-controversies",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Economic Controversies by Murry Rothbard",
  author: "Murray Rothbard",
  position: i,
})
i = i + 1
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save

cover_img = "spacetime_physics.jpg"
@book = Book.new({
  title: "Spacetime Physics",
  subtitle: "Introduction to Special Relativity; Second Edition",
  book_category_id: BookCategory.find(8).id,
  book_link: "https://www.amazon.com/Spacetime-Physics-Edwin-F-Taylor/dp/0716723271/ref=sr_1_1?s=books&ie=UTF8&qid=1517016672&sr=1-1&keywords=spacetime+physics+taylor+and+wheeler",
  image_address: cover_img,
  image_alt: "Alex Younger ReadingList Spacetime Physics by Edwin F. Taylor & John Archibald Wheeler",
  author: "Edwin F. Taylor & John Archibald Wheeler",
  position: i,
})
@book.book_cover.attach(io: File.open("app/assets/images/#{cover_img}"), filename: cover_img, content_type: "image/jpg")
@book.save
