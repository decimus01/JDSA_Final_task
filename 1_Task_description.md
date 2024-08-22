# Dilan’s Travel Guide

## The Tasks

Dilan wants to spend more time and more money on his business. He wants to focus on one country first.
  1. **In which country should he prioritise his effort and why?**
  2. **Any other advice to Dilan on how to be smart with his investments based on the data from the last 3 months?**
  3. **Can you see any more interesting information (beyond the above 2 questions) in the data from which Dilan could profit?**

Answer these questions and create a presentation a (in PowerPoint, Keynote, Google Slides or anything similar) in which you introduce your solution (with max. 20 slides)!

---

## About The Business Situation 
_Disclaimer: this is not a real business. Any similarity to reality is purely coincidental._

Dilan is a world traveler and a solo entrepreneur. He writes a travel blog where he sells info products: a $8 e-book (World Travelers’ Best Practices) and a $80 video course (How To Travel the World).
On his blog he has thousands of readers every day, coming from three sources: Reddit, SEO and AdWords.

Dilan writes about his travel experiences covering the 6 main continents of the planet – these are the main categories on the blog.

The business strategy is simple:
  1. New readers visit the blog.
  2. They read articles.
  3. They subscribe to the newsletter.
  4. They purchase the info products.

Dilan’s travel blog is available in 8 (and only 8) different countries.

The marketing budget is not too high at the moment: Dilan spends only ~$1000 a month combined:
- for Adwords advertisement (~$500 a month for paid ads),
- for SEO (~$250 a month for editing) and
- for Reddit (~$250 a month for content creation)

He wants to invest more (time, work and money). But how to do that the most efficiently? What should he focus on?
That’s where he needs your help!

## Dilan’s Data Structure Documentation

In this data set, you will find the raw user activity data from Dilan’s blog between 1 January 2018 and 31 March 2018. It’s a log with ~600.000 rows. The format is similar to what you had at Send-A-Tree but there are important differences.

  1. The whole data log is one big file.
  2. This is the .csv file. The field separator is a semi-colon (;).
  3. The first column is the date and the time of the event, in this format: YYYY-MM-DD HH:MM:SS (eg. 2018-03-30 23:48:48).
  4. The second column is the event type. There are three different event types:
       1. read
       2. subscribe
       3. buy
  5. The rest of the columns depend on the event type:
       1. For read there are two options:
          - If this is the first visit from the given user, then the next fields are: country; user_id; source; topic
          - If it’s a returning reader, then these are the fields: country; user_id; topic
       2. For subscribe there is only one additional column: user_id
       3. For buy there are two more columns: user_id and the price of the product the user bought.
  6. Examples for each event types:
       - First time reader: 2018-03-30 23:59:56;read;country_5;2458361283;Reddit;Asia
       - Returning reader: 2018-03-31 05:04:50;read;country_4;2458361208;Africa
       - Purchase: 2018-03-30 23:11:30;buy;2458339835;80
  7. The country column has 8 different values:
       - country_1
       - country_2
       - country_3
       - ...
       - country_8
  8. The source column has 3 different values:
      - Reddit
      - AdWords
      - SEO
  9. The topic column:
      - Africa
      - Europe
      - South America
      - North America
      - Australia
      - Asia
  10. The course price column:
      - 8
      - 80
