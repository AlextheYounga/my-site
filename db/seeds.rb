# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all

Book.create([
    {
        book_id: 1,
        title: "How to Win Friends and Influence People",
        subtitle: "The Only Book You Ned to Lead You to Success",
        author: "Dale Carnegie",
        image_address: "win_friends_influence.jpg",
        image_alt: "How to Win Friends and Influence People by Dale Carnegie",
        category: "peopleskill",
        book_link: "http://www.alextheyounger.me/articles/24",
    },
    {
        book_id: 2,
        title: "The Daily Stoic",
        subtitle: "366 Meditations on Wisdom, Perseverance, and the Art of Living",
        author: "Ryan Holiday",
        image_address: "daily_stoic.jpg",
        image_alt: "The Daily Stoic by Ryan Holiday",
        category: "better-liv",
        book_link: "http://www.alextheyounger.me/articles/25",
    },
    {
        book_id: 3,
        title: "Foundations of Morality",
        author: "Henry Hazlitt",
        image_address: "foundations_morality.jpg",
        image_alt: "Foundations of Morality by Henry Hazlitt",
        category: "phil",
        book_link: "https://mises.org/library/foundations-morality"
    },
    {
        book_id: 4,
        title: "The Antidote",
        subtitle: "Happiness For People Who Can't Stand Positive Thinking",
        author: "Oliver Burkeman",
        image_address: "the_antidote.jpg",
        image_alt: "The Antidote: Happiness For People Who Can't Stand Positive Thinking by Oliver Burkeman",
        category: "better-liv",
        book_link: "https://www.amazon.com/Antidote-Happiness-People-Positive-Thinking/dp/0865478015/ref=sr_1_1?s=books&ie=UTF8&qid=1515919681&sr=1-1&keywords=the+antidote+happiness+for+people+who+can%27t+stand+positive+thinking"
    },
    {
        book_id: 5,
        title: "Square One",
        subtitle: "The Foundations of Knowledge",
        author: "Steve Patterson",
        image_address: "square_one.jpg",
        image_alt: "Square One: The Foundations of Knowledge by Steve Patterson",
        category: "phil",
        book_link: "https://www.amazon.com/Square-One-Foundations-Steve-Patterson-ebook/dp/B01M9JL27L/ref=sr_1_1?ie=UTF8&qid=1515980663&sr=8-1&keywords=square+one+steve+patterson",
    },
    {
        book_id: 6,
        title: "Making Economic Sense",
        author: "Murray Rothbard",
        image_address: "making_economic_sense.jpg",
        image_alt: "Making Economic Sense by Murray Rothbard",
        category: "econ",
        book_link: "https://mises.org/library/making-economic-sense",
    },
    {
        book_id: 7,
        title: "Good Profit",
        subtitle: "How Creating Value for Others Built One of the World's Most Successful Companies",
        author: "Charles Koch",
        image_address: "good_profit.jpg",
        image_alt: "Good Profit by Charles Koch",
        category: "biz",
        book_link: "https://www.amazon.com/Good-Profit-Creating-Successful-Companies/dp/1101904135/ref=sr_1_1?s=books&ie=UTF8&qid=1515919796&sr=1-1&keywords=good+profit+charles+koch",
    },
    {
        book_id: 8,
        title: "A Guide to the Good Life",
        subtitle: "The Ancient Art of Stoic Joy",
        author: "William B. Irvine",
        image_address: "good_life.jpg",
        image_alt: "A Guide to the Good Life by William B. Irvine",
        category: "better-liv",
        book_link: "https://www.amazon.com/Guide-Good-Life-Ancient-Stoic/dp/0195374614/ref=sr_1_1?s=books&ie=UTF8&qid=1515918746&sr=1-1&keywords=a+guide+to+the+good+life",
    },
    {
        book_id: 9,
        title: "The Solution to Social Anxiety",
        subtitle: "Break Free from the Shyness That Holds You Back",
        author: "Dr. Aziz Gazipura",
        image_address: "solution_social_anxiety.jpg",
        image_alt: "The Solution to Social Anxiety by Dr. Aziz Gazipura",
        category: "peopleskill",
        book_link: "https://www.amazon.com/Solution-Social-Anxiety-Break-Shyness-ebook/dp/B00F5IU5CU/ref=sr_1_2_sspa?s=books&ie=UTF8&qid=1515919521&sr=1-2-spons&keywords=solution+to+social+anxiety&psc=1",
    },
    {
        book_id: 10,
        title: "Notes on Democracy",
        author: "H.L. Mencken",
        image_address: "notes_on_democracy.jpg",
        image_alt: "Notes on Democracy by H.L. Mencken",
        category: "pol",
        book_link: "https://www.amazon.com/Notes-Democracy-Large-Print-Mencken/dp/1494288648/ref=sr_1_1?s=books&ie=UTF8&qid=1515919184&sr=1-1&keywords=notes+on+democracy",
    },
    {
        book_id: 11,
        title: "Waking Up",
        subtitle: "A Guide to Spirituality Without Religion",
        author: "Sam Harris",
        image_address: "waking_up.jpg",
        image_alt: "Waking Up by Sam Harris",
        category: "better-liv",
        book_link: "https://www.amazon.com/Waking-Up-Spirituality-Without-Religion/dp/1451636024/ref=sr_1_1?s=books&ie=UTF8&qid=1515920029&sr=1-1&keywords=waking+up+sam+harris",
    },
    {
        book_id: 12,
        title: "Out of Your Mind",
        subtitle: "Essential Listening from the Alan Watts Archives",
        author: "Alan Watts",
        image_address: "out_of_mind.jpg",
        image_alt: "Out of Your Mind",
        category: "phil",
        book_link: "https://www.amazon.com/Out-of-Your-Mind/dp/B0162WIRKY/ref=sr_1_2?ie=UTF8&qid=1517010662&sr=8-2&keywords=out+of+your+mind+by+alan+watts",
    },
    {
        book_id: 13,
        title: "You're It",
        subtitle: "On Hiding, Seeking, and Being Found",
        category: "phil",
        image_address: "youre_it.jpg",
        book_link: "https://www.amazon.com/Youre-Hiding-Seeking-Being-Found/dp/1591797349",
        image_alt: "You're It by Alan Watts",
        author: "Alan Watts",
    },
    {
        book_id: 14,
        title: "Street Smarts",
        subtitle: "",
        category: "finance",
        image_address: "street_smarts",
        book_link: "https://www.amazon.com/Street-Smarts-Adventures-Road-Markets/dp/0307986071/ref=sr_1_1?s=books&ie=UTF8&qid=1515923486&sr=1-1&keywords=street+smarts+jim+rogers",
        image_alt: "Street Smarts by Jim Rogers",
        author: "Jim Rogers",
    },
    {
        book_id: 15,
        title: "The Charisma Myth",
        subtitle: "How Anyone Can Master the Art and Science of Personal Magnetism",
        category: "peopleskill",
        image_address: "charisma_myth.jpg",
        book_link: "https://www.amazon.com/Charisma-Myth-Science-Personal-Magnetism/dp/1591845947/ref=sr_1_1?s=books&ie=UTF8&qid=1515919947&sr=1-1&keywords=The+Charisma+Myth+by+Olivia+Fox+Cabane",
        image_alt: "The Charisma Myth by Olivia Fox Cabane",
        author: "Olivia Fox Cabane",
    },
    {
        book_id: 16,
        title: "Extraordinary Popular Delusions and the Madness of Crowds",
        category: "finance",
        image_address: "popular_delusions.jpg",
        book_link: "https://www.amazon.com/Extraordinary-Popular-Delusions-Madness-Crowds/dp/1463740514/ref=sr_1_1?s=books&ie=UTF8&qid=1515920340&sr=1-1&keywords=extraordinary+popular+delusions+and+the+madness+of+crowds",
        image_alt: "Extraordinary Popular Delusions and the Madness of Crowds by Charles Mackay",
        author: "Charles Mackay",
    },
    {
        book_id: 17,
        title: "A Troublesome Inheritance",
        subtitle: "Genes, Race, and Human History",
        category: "sci",
        image_address: "troublesome_inheritance.jpg",
        book_link: "https://www.amazon.com/Troublesome-Inheritance-Genes-Human-History/dp/0143127160/ref=sr_1_1?s=books&ie=UTF8&qid=1515921233&sr=1-1&keywords=a+troublesome+inheritance+by+nicholas+wade",
        image_alt: "A Troublesome Inheritance by Nicholas Wade",
        author: "Nicholas Wade",
    },
    {
        book_id: 18,
        title: "Why We Sleep",
        subtitle: "Unlocking the Power of Sleep and Dreams",
        category: "sci",
        image_address: "sleep.jpg",
        book_link: "https://www.amazon.com/Why-We-Sleep-Unlocking-Dreams/dp/1501144316",
        image_alt: "Unlocking the Power of Sleep and Dreams by Matthew Walker, PhD",
        author: "Matthew Walker, PhD",
    },
    {
        book_id: 19,
        title: "Fool's Errand",
        subtitle: "Time to End the War in Afghanistan",
        category: "pol",
        image_address: "fools_errand.jpg",
        book_link: "https://www.amazon.com/Fools-Errand-Time-End-Afghanistan/dp/1548650218",
        image_alt: "https://images-na.ssl-images-amazon.com/images/I/51zrL6zS1ZL._SX331_BO1,204,203,200_.jpg",
        author: "Scott Horton",
    },
    {
        book_id: 20,
        title: "The Failure of the New Economics",
        subtitle: "An Analysis of the Keynesian Fallacies",
        category: "econ",
        image_address: "failure_new_economics.jpg",
        book_link: "https://mises.org/library/failure-new-economics-0",
        image_alt: "The Failure of the New Economics by Henry Hazlitt",
        author: "Henry Hazlitt",
    },
    {
        book_id: 21,
        title: "The Righteous Mind",
        subtitle: "Why Good People are Divided by Politics and Religion",
        category: "pol",
        image_address: "righteous_mind.jpg",
        book_link: "https://www.amazon.com/Righteous-Mind-Divided-Politics-Religion/dp/0307455777/ref=sr_1_1?s=books&ie=UTF8&qid=1515921478&sr=1-1&keywords=jonathan+haidt+the+righteous+mind",
        image_alt: "The Righteous Mind by Jonathan Haidt",
        author: "Jonathan Haidt",
    },
    {
        book_id: 22,
        title: "Do What You Are",
        subtitle: "Discover the Perfect Career for You Through the Secrets of Personality Type",
        category: "better-liv",
        image_address: "what_you_are.jpg",
        book_link: "https://www.amazon.com/Do-What-You-Are-Personality/dp/031623673X/ref=sr_1_2?s=books&ie=UTF8&qid=1515924039&sr=1-2&keywords=do+what+you+are+paul+tieger",
        image_alt: "Do What You Are by Paul D. Tieger, Barbara Barron, and Kelly Tieger",
        author: "Paul D. Tieger, Barbara Barron, and Kelly Tieger",
    },
    {
        book_id: 23,
        title: "Mindfulness in Plain English",
        category: "better-liv",
        image_address: "mindfulness_plain_english.jpg",
        book_link: "https://www.amazon.com/Mindfulness-Plain-English-Revised-Expanded/dp/0861713214/ref=sr_1_3?s=books&ie=UTF8&qid=1517263300&sr=1-3&keywords=mindfulness+in+plain+english",
        image_alt: "Mindfulness in Plain English by Bhante Gunaratana",
        author: "Bhante Gunaratana",
    },
    {
        book_id: 24,
        title: "Deep Work",
        subtitle: "Rules for Focused Success in a Distracted World",
        category: "better-liv",
        image_address: "deep_work.jpg",
        book_link: "https://www.amazon.com/Deep-Work-Focused-Success-Distracted/dp/1455586692/ref=sr_1_1?s=books&ie=UTF8&qid=1515921725&sr=1-1&keywords=cal+newport+deep+work",
        image_alt: "Deep Work by Cal Newport",
        author: "Cal Newport",
    },
    {
        book_id: 25,
        title: "Deep Thoughts",
        subtitle: "Inspiration for the Uninspired",
        category: "misc",
        image_address: "deep_thoughts.jpg",
        book_link: "https://www.amazon.com/Deep-Thoughts-Inspiration-Jack-Handey/dp/0425133656",
        image_alt: "Deep Thoughts by Jack Handey",
        author: "Jack Handey",
    },
    {
        book_id: 26,
        title: "Total Recall",
        subtitle: "My Unbelievably True Life Story",
        category: "misc",
        image_address: "total_recall.jpg",
        book_link: "https://www.amazon.com/Total-Recall-Unbelievably-True-Story/dp/1451662440/ref=sr_1_1?s=books&ie=UTF8&qid=1521363393&sr=1-1&keywords=total+recall+arnold+schwarzenegger",
        image_alt: "Total Recall by Arnold Schwarzenegger",
        author: "Arnold Schwarzenegger",
    },
    {
        book_id: 27,
        title: "Hawk",
        subtitle: "Occupation: Skateboarder",
        category: "misc",
        image_address: "hawk.jpg",
        book_link: "https://www.amazon.com/Hawk-Occupation-Skateboarder-Tony/dp/0060958316/ref=sr_1_2?ie=UTF8&qid=1521363258&sr=8-2&keywords=hawk+by+tony+hawk&dpID=51TnMCb8ToL&preST=_SY291_BO1,204,203,200_QL40_&dpSrc=srch",
        image_alt: "Hawk by Tony Hawk",
        author: "Tony Hawk",
    },
    {
        book_id: 28,
        title: "Hot Commodities",
        subtitle: "How Anyone Can Invest Profitably in the World's Best Market",
        category: "finance",
        image_address: "hot_commodities.jpg",
        book_link: "https://www.amazon.com/Hot-Commodities-Anyone-Invest-Profitably-ebook/dp/B000FC2OO8/ref=sr_1_1?s=digital-text&ie=UTF8&qid=1515983311&sr=1-1&keywords=hot+commodities+jim+rogers",
        image_alt: "Hot Commodities by Jim Rogers",
        author: "Jim Rogers",
    },
    {
        book_id: 29,
        title: "The Road to Ruin",
        subtitle: "The Global Elites' Secret Plan for the Next Financial Crisis",
        category: "pol",
        image_address: "road_to_ruin.jpg",
        book_link: "https://www.amazon.com/Road-Ruin-Global-Elites-Financial/dp/1591848083/ref=sr_1_1?s=books&ie=UTF8&qid=1515984429&sr=1-1&keywords=The+Road+to+Ruin+by+James+Rickards",
        image_alt: "The Road to Ruin by Jim Rickards",
        author: "Jim Rickards",
    },
    {
        book_id: 30,
        title: "Enlightenment Now",
        subtitle: "The Case for Reason, Science, Humanism, and Progress",
        category: "sci",
        image_address: "enlightenment_now.jpg",
        book_link: "https://www.amazon.com/Enlightenment-Now-Science-Humanism-Progress/dp/0525427570/ref=sr_1_2?s=books&ie=UTF8&qid=1526181530&sr=1-2&keywords=enlightenment+now+by+steven+pinker",
        image_alt: "Enlightenment Now by Steven Pinker",
        author: "Steven Pinker",
    },
    {
        book_id: 31,
        title: "The Willpower Instinct",
        subtitle: "How Self Control Works, Why it Matters, and What You Can Do to Get More of It",
        category: "better-liv",
        image_address: "willpower_instinct.jpg",
        book_link: "https://www.amazon.com/Willpower-Instinct-Self-Control-Works-Matters/dp/1583335080/ref=sr_1_2?s=books&ie=UTF8&qid=1515923129&sr=1-2&keywords=willpower+instinct+by+kelly+mcgonigal",
        image_alt: "https://images.gr-assets.com/books/1436737104l/10865206.jpg",
        author: "Kelly McGonigal, Phd",
    },
    {
        book_id: 32,
        title: "Economics in One Lesson",
        subtitle: "The Shortest and Surest Way to Understand Basic Economics",
        category: "econ",
        image_address: "economics_one_lesson.jpg",
        book_link: "https://www.amazon.com/Henry-Hazlitt-Economics-One-Lesson/dp/B004LNZ5H0/ref=sr_1_5?s=books&ie=UTF8&qid=1515985408&sr=1-5&keywords=economics+in+one+lesson+henry+hazlitt",
        image_alt: "Economics in One Lesson by Henry Hazlitt",
        author: "Henry Hazlitt",
    },
    {
        book_id: 33,
        title: "The Richest Man in Babylon",
        category: "finance",
        image_address: "richest_man_babylon.jpg",
        book_link: "https://www.amazon.com/Richest-Man-Babylon-George-Clason/dp/1939438330/ref=pd_lpo_sbs_14_img_0?_encoding=UTF8&psc=1&refRID=08XFMFWKZHFKNRJZYYDF",
        image_alt: "The Richest Man in Babylon by George Clason",
        author: "George Clason",
    },
    {
        book_id: 34,
        title: "Free Will",
        category: "phil",
        image_address: "free_will.jpg",
        book_link: "https://www.amazon.com/Free-Will-Harris-Sam-Paperback/dp/B011SJZJ8O/ref=sr_1_3?s=books&ie=UTF8&qid=1517011043&sr=1-3&keywords=free+will+sam+harris",
        image_alt: "Free Will by Sam Harris",
        author: "Sam Harris",
    },
    {
        book_id: 35,
        title: "Influence",
        subtitle: "The Psychology of Persuasion",
        category: "peopleskill",
        image_address: "influence.jpg",
        book_link: "https://www.amazon.com/Influence-Psychology-Persuasion-Robert-Cialdini/dp/006124189X/ref=sr_1_1?s=books&ie=UTF8&qid=1515922756&sr=1-1&keywords=influence+robert+cialdini",
        image_alt: "Influence by Robert Cialdini",
        author: "Robert Cialdini",
    },
    {
        book_id: 36,
        title: "Socialism",
        subtitle: "An Economic and Sociological Analysis",
        category: "econ",
        image_address: "socialism.jpg",
        book_link: "https://mises.org/library/socialism-economic-and-sociological-analysis",
        image_alt: "Socialism by Ludwig Von Mises",
        author: "Ludwig Von Mises",
    },
    {
        book_id: 37,
        title: "The Power of Body Language",
        subtitle: "An Ex-FBI Agent's System for Speed Reading People",
        category: "peopleskill",
        image_address: "body_language.jpg",
        book_link: "https://www.amazon.com/Power-Body-Language-Ex-FBI-Speed-Reading/dp/B00OH795TO/ref=sr_1_2?ie=UTF8&qid=1515983461&sr=8-2&keywords=the+power+of+body+language+joe+navarro",
        image_alt: "The Power of Body Language by Joe Navarro",
        author: "Joe Navarro",
    },
    {
        book_id: 38,
        title: "What Has Government Done to Our Money",
        subtitle: "and The Case for a 100 Percent Gold Dollar",
        category: "econ",
        image_address: "government_done_money.jpg",
        book_link: "https://mises.org/library/what-has-government-done-our-money",
        image_alt: "What Has Government Done to Our Money by Murray Rothbard",
        author: "Murray Rothbard",
    },
    {
        book_id: 39,
        title: "Show Your Work",
        subtitle: "10 Ways to Share Your Creativity and Get Discovered",
        category: "biz",
        image_address: "show_work.jpg",
        book_link: "https://www.amazon.com/Show-Your-Work-Austin-Kleon/dp/076117897X/ref=sr_1_1?s=books&ie=UTF8&qid=1520050953&sr=1-1&keywords=show+your+work",
        image_alt: "Show Your Work by Austin Kleon",
        author: "Austin Kleon",
    },
    {
        book_id: 40,
        title: "The Book on Rental Property Investing",
        subtitle: "How to create wealth and passive income through smart buy & hold real estate investing",
        category: "finance",
        image_address: "rental_property.jpg",
        book_link: "https://www.amazon.com/Book-Rental-Property-Investing-Intelligent/dp/099071179X/ref=sr_1_3?s=books&ie=UTF8&qid=1533872549&sr=1-3&keywords=rental+property+investing",
        image_alt: "The Book on Rental Property Investing by Brandon Turner",
        author: "Brandon Turner",
    },
        {
        book_id: ,
        title: "Steal the Show",
          subtitle: "",
    category: "peopleskill",
            image_address: "",
              book_link:"https://www.amazon.com/Steal-Show-Interviews-Deal-Closing-Performances/dp/0544800842/ref=sr_1_1?s=books&ie=UTF8&qid=1515984539&sr=1-1&keywords=Steal+the+Show+by+Michael+Port",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/51iz7-7XVtL._SX331_BO1,204,203,200_.jpg",
              author:"Michael Port",
              },
          
          
          {
        book_id: ,
        title: "Crucial Conversations",
          subtitle: "",
    category: "peopleskill",
            image_address: "",
              book_link:"https://www.amazon.com/Crucial-Conversations-Talking-Stakes-Second/dp/0071771328/ref=sr_1_1?s=books&ie=UTF8&qid=1515984205&sr=1-1&keywords=crucial+conversations",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/51iqT0EkDaL.jpg",
              author:"Kelly Patterson",
              },
        
        
        {
        book_id: ,
        title: "What You Should Know About Inflation",
          subtitle: "",
    category: "econ",
            image_address: "",
               book_link:"https://mises.org/library/what-you-should-know-about-inflation-0",
              image_alt:"https://mises.org/sites/default/files/styles/slideshow/public/static-page/img/What%20You%20Should%20Know%20About%20Inflation_Hazlitt.jpg?itok=-VLGn0aL"
              author:"Henry Hazlitt",
              },
        
        {
        book_id: ,
        title: "Behave", 
          subtitle: "",
    category: "sci",
            image_address: "",
              book_link:"https://www.amazon.com/Behave-Biology-Humans-Best-Worst-ebook/dp/B01IAUGC5S/ref=sr_1_1?s=digital-text&ie=UTF8&qid=1515981537&sr=1-1&keywords=behave+robert+sapolsky",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/51uRY7NIjML._SX327_BO1,204,203,200_.jpg", 
              author:"Sapolsky",
              },
        
        
        {
        book_id: ,
        title: "America's Great Depression",
           subtitle: "",
    category: "econ",
            image_address: "",
               book_link:"https://mises.org/library/americas-great-depression",
                image_alt:"https://mises.org/sites/default/files/styles/slideshow/public/static-page/img/America%27s%20Great%20Depression_Rothbard_0.jpg?itok=0C8a6lSy"
                author:"Murray Rothbard",
                </a,
              </div,
           </div,
     
     
     {
        book_id: ,
        title: "A Short History of Man",
           subtitle: "",
    category: "misc",
            image_address: "",
              book_link:"https://www.amazon.com/Short-History-Man-Progress-Decline/dp/1610165918/ref=sr_1_1?s=books&ie=UTF8&qid=1515984984&sr=1-1&keywords=a+short+history+of+man+hoppe",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/41oWKA0KKTL.jpg",
              author:"Hans-Hermann Hoppe",
              },
      
          
          
       
          {
        book_id: ,
        title: "The CEO Tightrope",  
          subtitle: "",
    category: "biz",
            image_address: "",
              book_link:"https://www.amazon.com/CEO-Tightrope-Master-Balancing-Successful/dp/1626341060/ref=sr_1_1?s=books&ie=UTF8&qid=1515986582&sr=1-1&keywords=the+ceo+tightrope+by+joel+trammell",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/41iWr%2B5PGpL._SX325_BO1,204,203,200_.jpg",
              author:"Joel Trammell",
              },
      
        
          
         
        {
        book_id: ,
        title: "The Little Book of Bull Moves",
          subtitle: "",
    category: "finance",
            image_address: "",
               book_link:"https://www.amazon.com/Little-Book-Moves-Updated-Expanded/dp/0470643994/ref=sr_1_2?s=books&ie=UTF8&qid=1515983796&sr=1-2&keywords=the+little+book+of+bull+moves+peter+schiff",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/51mw3OJEL-L._AC_UL320_SR228,320_.jpg",
              author:"Schiff",
              },
          
          
          {
        book_id: ,
        title: "The 4-Hour Workweek",  
          subtitle: "",
    category: "biz",
            image_address: "",
              book_link:"https://www.amazon.com/4-Hour-Workweek-Escape-Live-Anywhere/dp/0307465357/ref=sr_1_1?s=books&ie=UTF8&qid=1515985483&sr=1-1&keywords=the+four+hour+work+week",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/51v5Pje3AtL._SX331_BO1,204,203,200_.jpg",
              author:"Tim Ferriss",
              },
          
          
           {
        book_id: ,
        title: "The 48 Laws of Power",
           subtitle: "",
    category: "misc",
            image_address: "",
              book_link:"https://www.amazon.com/Summary-Power-Robert-Greene-Ideas-ebook/dp/B0776CLL6V/ref=sr_1_1_sspa?s=books&ie=UTF8&qid=1515986892&sr=1-1-spons&keywords=the+48+laws+of+power&psc=1",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/41ILsjEMw-L._SX356_BO1,204,203,200_.jpg",
              author:"Robert Greene",
              },
          
           {
        book_id: ,
        title: "The Intelligent Investor",
          subtitle: "",
    category: "finance",
            image_address: "",
              book_link:"https://www.amazon.com/Intelligent-Investor-Definitive-Investing-Essentials/dp/0060555661/ref=sr_1_1?s=books&ie=UTF8&qid=1515987281&sr=1-1&keywords=the+intelligent+investor+by+benjamin+graham",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/91%2Bt0Di07FL.jpg",
              author:"Benjamin Graham",
              },
          
          {
        book_id: ,
        title: "The Lean Startup",  
          subtitle: "",
    category: "biz",
            image_address: "",
              book_link:"https://www.amazon.com/Lean-Startup-Entrepreneurs-Continuous-Innovation/dp/0307887898/ref=sr_1_3?s=books&ie=UTF8&qid=1515983642&sr=1-3&keywords=the+lean+startup+eric+ries",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/517wplLjOXL._SX329_BO1,204,203,200_.jpg",
              author:"Eric Ries",
              },
             
      
         {
        book_id: ,
        title: "The Politically Incorrect Guide to American History",  
          subtitle: "",
    category: "pol",
            image_address: "",
              book_link:"https://www.amazon.com/Politically-Incorrect-Guide-American-History/dp/B000CCE4JE/ref=sr_1_1?ie=UTF8&qid=1517017239&sr=8-1&keywords=politically+incorrect+guide+to+american+history",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/51STDZB2TVL._SY344_BO1,204,203,200_.jpg",
              author:"Tom Woods",
              },
        
        
        
         
         {
        book_id: ,
        title: "To Sell is Human",
          subtitle: "",
    category: "biz",
            image_address: "",
              book_link:"https://www.amazon.com/Sell-Human-Surprising-Moving-Others/dp/1594631905/ref=sr_1_3?s=books&ie=UTF8&qid=1515985359&sr=1-3&keywords=to+sell+is+human",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/41NH1TwXydL._SX331_BO1,204,203,200_.jpg",
              author:"Daniel H. Pink",
              },
           
          
        
          {
        book_id: ,
        title: "Born for This",  
          subtitle: "",
    category: "biz",
            image_address: "",
               book_link:"https://www.amazon.com/Born-This-Find-Work-Meant/dp/1101903988/ref=sr_1_1?s=books&ie=UTF8&qid=1515985831&sr=1-1&keywords=born+for+this+chris+guillebeau",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/41Y%2Bc2y1mgL._SX329_BO1,204,203,200_.jpg",
              author:"Guillebeau",
              },
          
        
        
        {
        book_id: ,
        title: "The $100 Startup",
           subtitle: "",
    category: "biz",
            image_address: "",
              book_link:"https://www.amazon.com/100-Startup-Reinvent-Living-Create/dp/0307951529/ref=sr_1_1?s=books&ie=UTF8&qid=1515986114&sr=1-1&keywords=the+%24100+startup+by+chris+guillebeau",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/51qxnQ0xbDL._SX322_BO1,204,203,200_.jpg",
              author:"Guillebeau",
              },
         
         
          {
        book_id: ,
        title: "The Law",
           subtitle: "",
    category: "econ",
            image_address: "",
               book_link:"https://www.amazon.com/s/ref=nb_sb_ss_i_1_11?url=search-alias%3Dstripbooks&field-keywords=the+law+by+frederic+bastiat&sprefix=the+law+by+%2Cstripbooks%2C186&crid=7ZMH94ILX0L6",
              image_alt:"https://mises.org/sites/default/files/styles/slideshow/public/static-page/img/The%20Law_Bastiat.jpg?itok=3b4AAO44"
              author:"Frederic Bastiat",
              },
     
      
      
     
        {
        book_id: ,
        title: "Why Zebras Don't Get Ulcers",  
          subtitle: "",
    category: "sci",
            image_address: "",
              book_link:"https://www.amazon.com/Why-Zebras-Dont-Ulcers-Third/dp/0805073698/ref=sr_1_1?s=books&ie=UTF8&qid=1515986523&sr=1-1&keywords=Why+Zebras+Don%27t+Get+Ulcers+by+Robert+M.+Sapolsky",
              image_alt:"https://images.gr-assets.com/books/1441955030l/327.jpg",
              author:"Sapolsky",
              },
          
          
          {
        book_id: ,
        title: "Three Languages of Politics",
          subtitle: "",
    category: "pol",
            image_address: "",
              book_link:"https://www.amazon.com/Three-Languages-Politics-Talking-Political/dp/1944424466/ref=sr_1_1?s=books&ie=UTF8&qid=1515986807&sr=1-1&keywords=The+Three+Languages+of+Politics+by+Arnold+Kling",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/61Cnfg%2BbmVL.__BG0,0,0,0_FMpng_AC_UL320_SR218,320_.jpg",
              author:"Arnold Kling",
              },
      
      
      
       
        {
        book_id: ,
        title: "Never Eat Alone",  
          subtitle: "",
    category: "peopleskill",
            image_address: "",
               book_link:"https://www.amazon.com/Never-Eat-Alone-Expanded-Updated/dp/0385346654/ref=sr_1_1?s=books&ie=UTF8&qid=1515987002&sr=1-1&keywords=never+eat+alone+by+keith+ferrazzi",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/41gorlROJxL._SX327_BO1,204,203,200_.jpg",
              author:"Keith Ferrazzi",
              },
        
        
        
          {
        book_id: ,
        title: "Darkness Visible",  
           subtitle: "",
    category: "misc",
            image_address: "",
              book_link:"https://www.amazon.com/Darkness-Visible-Madness-William-Styron/dp/0679736395/ref=sr_1_1?s=books&ie=UTF8&qid=1515987132&sr=1-1&keywords=darkness+visible+william+styron",
              image_alt:"https://images.penguinrandomhouse.com/cover/9780679643524"
              author:"",
              },
         
         
         {
        book_id: ,
        title: "Ignore Everybody",
           subtitle: "",
    category: "misc",
            image_address: "",
              book_link:"https://www.amazon.com/Ignore-Everybody-Other-Keys-Creativity/dp/159184259X/ref=sr_1_1?s=books&ie=UTF8&qid=1515985570&sr=1-1&keywords=Ignore+Everybody+by+Hugh+Macleod",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/41Pbs%2B7XwvL._SX329_BO1,204,203,200_.jpg",
              author:"",
              },
          
         
         {
        book_id: ,
        title: "Economic Contraversies",
           subtitle: "",
    category: "econ",
              image_address: "",
                 book_link:"https://mises.org/library/economic-controversies",
                image_alt:"https://mises.org/sites/default/files/styles/slideshow/public/static-page/img/Economic%20Controversies_20110209_bookstore.jpg?itok=UlB8Dgb_"
                 author:"Murray Rothbard",
                 </a,
              </div,
            </div,
          
        
       
        {
        book_id: ,
        title: "The Ruby on Rails Tutorial",  
           subtitle: "",
    category: "misc",
            image_address: "",
              book_link:"https://www.railstutorial.org/",
              image_alt:"https://softcover.s3.amazonaws.com/636/ruby_on_rails_tutorial_3rd_edition/images/cover-web.png"
              author:"Michael Hartl",
              },
       
     
          
         {
        book_id: ,
        title: "Spacetime Physics",   
          subtitle: "",
    category: "sci",
            image_address: "",
              book_link:"https://www.amazon.com/Spacetime-Physics-Edwin-F-Taylor/dp/0716723271/ref=sr_1_1?s=books&ie=UTF8&qid=1517016672&sr=1-1&keywords=spacetime+physics+taylor+and+wheeler",
              image_alt:"https://images-na.ssl-images-amazon.com/images/I/51wj4hVfCVL._SX375_BO1,204,203,200_.jpg",
                   author:"Edwin F. Taylor & John Archibald Wheeler",},
       </div,

            ])