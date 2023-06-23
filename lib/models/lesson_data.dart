class LessonData {
  fetch(String lessonId) {
    return lessonData[lessonId];
  }

  var lessonData = {
    'Period': {
      'introduction': '''
The period is a punctuation mark that serves two main purposes in writing.
It indicates the end of a sentence and is used in declarative and imperative sentences.
Additionally, periods are used in abbreviations and to form ellipses.
''',
      "rules": [
        {
          "title": "End a Sentence",
          "explanation":
              "The primary function of a period is to signal the end of a sentence.",
          "answer": 'English is not an easy language.',
          "prompt": 'English is not an easy language'
        },
        {
          "title": "Indicate an Omission",
          "explanation":
              "The secondary purpose of a period is to indicate that some information has been removed, such as letters in a word.",
          "answer":
              'They spent the day cleaning their living room, kitchen, bedroom, etc...',
          "prompt":
              'They spent the day cleaning their living room, kitchen, bedroom, etc',
        },
        {
          "title": "Other Uses",
          "explanation": "Periods are used in abbreviations and initials.",
          "answer": 'Dr. John Smith attended the conference.',
          "prompt": 'Dr John Smith attended the conference'
        },
      ]
    },
    'Comma': {
      'introduction': '''
A comma is a punctuation mark that indicates a smaller break in a sentence.
 It is used to separate words, clauses, or ideas within a sentence. Understanding the
  rules of comma usage is essential for clear and effective writing.
''',
      "rules": [
        {
          "title": "Commas with Lists",
          "explanation":
              "When you have a list that contains more than two elements, use commas to separate them.",
          "answer": "Julie loves ice cream, books, and kittens.",
          "prompt": "Julie loves ice cream books and kittens."
        },
        {
          "title": "Serial Comma (Oxford Comma)",
          "explanation":
              "The final comma in a list of three or more items is optional, known as the serial comma or Oxford comma.",
          "answer": "Simon needs bread, milk, and butter at the grocery store.",
          "prompt": "Simon needs bread, milk and butter at the grocery store."
        },
        {
          "title": "Commas with Coordinating Conjunctions (and, but)",
          "explanation":
              "Use a comma before the coordinating conjunction 'but' when joining two independent clauses.",
          "answer": "Cleo is a good singer, but she’s an even better dancer.",
          "prompt": "Life is, but a dream."
        },
        {
          "title": "Avoiding Comma Splices",
          "explanation":
              "To join two independent clauses, use a conjunction or a semicolon; a comma alone is not enough.",
          "answer": "We were out of milk, so I went to the store.",
          "prompt": "We were out of milk, I went to the store."
        },
        {
          "title": "Commas with Relative Clauses",
          "explanation":
              "Nonrestrictive clauses, introduced by 'which' or 'who,' provide extra information and should be set off by commas.",
          "answer":
              "Posey’s Cafe, which Chester recommended, is a fantastic restaurant.",
          "prompt": ""
        },
        {
          "title": "Commas with Appositives",
          "explanation":
              "Nonessential appositives, which provide additional information, should be set off with commas.",
          "answer": "My partner, Angela, is a wonderful cook.",
          "prompt": ""
        },
        {
          "title": "Commas with Introductory Phrases",
          "explanation":
              "Use a comma after a participial or adverbial phrase that introduces a sentence, especially if it's longer than four words.",
          "answer": "Grabbing her umbrella, Kate raced out of the house.",
          "prompt": ""
        },
      ]
    },
    'Question Mark': {
      'introduction': '''
The question mark serves as a crucial punctuation mark that indicates a sentence is a question. It is used to signal an interrogative sentence and prompt a response. Direct questions, which frequently start with wh- words such as who, what, when, where, and why, often utilize the question mark, although there are exceptions to this rule.
''',
      "rules": [
        {
          "title": "Question Mark for Indicating a Question",
          "explanation":
              "The main purpose of a question mark is to indicate that a sentence is a question. Direct questions often begin with a wh- word (who, what, when, where, why).",
          "answer": "Why did the chicken cross the road?",
          "prompt": "Is it really that important?"
        },
        {
          "title": "Question Mark for Phrasing a Question",
          "explanation":
              "In writing, you need a question mark to signal to readers that a sentence should be read as a question, even if it's phrased as a declarative or imperative statement.",
          "answer": "You came all this way to ask me about a chicken?",
          "prompt": "Cross the road? Never!"
        },
        {
          "title": "Question Mark and Quotation Marks",
          "explanation":
              "Keep the question mark inside the quotation marks if it logically applies to what is enclosed. Place the question mark at the very end if it applies to the sentence as a whole.",
          "answer": "“What do you have to hide?” asked the nosy reporter.",
          "prompt":
              "The chicken asked, “Why is everyone so concerned about where I’m walking?”"
        },
        {
          "title": "Question Mark and Parentheses",
          "explanation":
              "If a question mark applies to the parenthetical information, place it inside the parentheses. If it applies to the whole sentence, put it outside the parentheses.",
          "answer":
              "I saw the chicken (or was it the rooster?) crossing the road.",
          "prompt": "Will the chicken cross the road again tomorrow (April 1)?"
        },
        {
          "title": "Indirect Questions",
          "explanation":
              "Indirect questions are embedded within declarative statements and do not take a question mark.",
          "answer":
              "The chicken asked whether anyone wanted to cross the road with her.",
          "prompt":
              "We all wondered why the chicken was so obsessed with that road."
        },
        {
          "title": "Using Interrobangs and Multiple Question Marks",
          "explanation":
              "In formal writing, it's best to limit yourself to using a plain question mark. Avoid using interrobangs, multiple question marks, or combinations of question marks and exclamation points.",
          "answer": "Can you believe it‽",
          "prompt": "Are you saying the chicken is a millionaire?!"
        }
      ]
    },
    'Quotation Mark': {
      'introduction': '''
"Quotation marks are punctuation marks used to set words and passages apart from the rest of the text. They serve various purposes, including indicating direct quotes, representing dialogue or speech, signaling the titles of short works, showing irony or skepticism, discussing words as words, and differentiating nicknames from given names. Additionally, there are specific rules for when to use single or double quotation marks and how to handle punctuation and capitalization within quotes.
''',
      "rules": [
        {
          "title": "Direct Quotes",
          "explanation":
              "Quotation marks are used to indicate a direct quote, which is a passage copied verbatim from another source. When using the same words as another author, enclose them in quotation marks.",
          "answer":
              "Stephen Hawking warned that the Higgs boson could potentially lead to “catastrophic vacuum decay” in the universe.",
          "prompt":
              "Stephen Hawking warned that the Higgs boson could potentially lead to catastrophic vacuum decay in the universe."
        },
        {
          "title": "Dialogue or Transcribed Speech",
          "explanation":
              "Quotation marks are used to represent speech in written text, whether it's transcribing what a person said in nonfiction or writing dialogue in fiction.",
          "answer":
              "“Where is the emergency room?” he asked the nurse urgently.",
          "prompt": "Where is the emergency room? he asked the nurse urgently."
        },
        {
          "title": "Titles of Short Works",
          "explanation":
              "Quotation marks are used for the titles of short works such as poems, short stories, and songs. Long-form works like books and films use italics instead.",
          "answer":
              "Written by Sylvia Plath, “Tulips” is a sad poem with a happy title.",
          "prompt":
              "Written by Sylvia Plath, Tulips is a sad poem with a happy title."
        },
        {
          "title": "Irony, Sarcasm, or Skepticism",
          "explanation":
              "Quotation marks, known as scare quotes, are used to indicate irony, sarcasm, or to question the validity of a word or phrase.",
          "answer":
              "My “pet” is really just a stray cat that comes by once a day.",
          "prompt":
              "My pet is really just a stray cat that comes by once a day."
        },
        {
          "title": "Discussing Words as Words",
          "explanation":
              "Quotation marks can be used to discuss a word, phrase, or letter without implying its intended meaning.",
          "answer": "The “p” in “pterodactyl” is actually silent.",
          "prompt": "The p in pterodactyl is actually silent."
        },
        {
          "title": "Differentiating Nicknames",
          "explanation":
              "When writing a person's nickname together with their given name, use quotation marks to distinguish the nickname from the formal name.",
          "answer":
              "Dwayne “The Rock” Johnson can’t escape his origins as a wrestler.",
          "prompt":
              "Dwayne The Rock Johnson can’t escape his origins as a wrestler."
        },
        {
          "title": "Punctuation within Quotation Marks",
          "explanation":
              "When using punctuation marks with quotation marks, place them inside the quotation marks.",
          "answer": "“We won!” shouted the coach to no one in particular.",
          "prompt": "“We won”! shouted the coach to no one in particular."
        },
        {
          "title": "Capitalization in Quoted Sentences",
          "explanation":
              "If quoting a complete sentence, capitalize the first letter of the quoted sentence. However, if the quotation is part of a larger sentence, it begins with a lowercase letter.",
          "answer":
              "The letter opened with, “We regret to inform you your application has been denied.”",
          "prompt":
              "The letter opened with, “we regret to inform you your application has been denied.”"
        },
        {
          "title": "Quotation Marks in Multi-Paragraph Quotes",
          "explanation":
              "When quoting multiple paragraphs, place opening quotation marks at the beginning of each new paragraph, but closing quotation marks only at the end of the entire passage.",
          "answer":
              "Here’s what the email said:\n\n“It’s been a long time. I hope you’re well.\n\n“I’m writing because I’m coming to Atlanta for work, and I was wondering if you’d like to meet up.”",
          "prompt":
              "Here’s what the email said:\n\n“It’s been a long time. I hope you’re well.\n\n“I’m writing because I’m coming to Atlanta for work, and I was wondering if you’d like to meet up.””"
        }
      ]
    },
    'Colon': {
      'introduction': '''
A colon is a punctuation mark that connects sentences, emphasizes words or phrases, and introduces quotes or explanations. It is crucial to maintain a close connection between the preceding and following elements whenever using a colon.
''',
      "rules": [
        {
          "title": "Separating Related Clauses",
          "explanation":
              "Use a colon to separate two independent clauses when the second clause directly relates to the first or when emphasis is placed on the second clause.",
          "answer":
              "There are three types of muscle in the body: cardiac, smooth, and skeletal.",
          "prompt":
              "The three types of muscle in the body are: cardiac, smooth, and skeletal."
        },
        {
          "title": "Introducing Lists",
          "explanation": "Colons are frequently used to introduce lists.",
          "answer":
              "Taylor Swift has written a few songs about John Mayer: 'Dear John,' 'The Story of Us,' and 'Would've, Could've, Should've.'",
          "prompt": "The movie had everything I wanted: action and suspense."
        },
        {
          "title": "Introducing Quotations",
          "explanation": "Colons can introduce quotations.",
          "answer":
              "He ended with the immortal words of Neil Young: 'Rock and Roll can never die.'",
          "prompt": ""
        },
        {
          "title": "Providing Examples",
          "explanation":
              "Colons can be used to illustrate a point by providing examples.",
          "answer":
              "There is one big reason we don’t talk about Bruno: His premonitions frightened the family.",
          "prompt": ""
        },
        {
          "title": "Separating Time and Ratios",
          "explanation":
              "Colons are used to separate units of time and ratios.",
          "answer": "The meeting will start at 11:11 a.m.",
          "prompt": ""
        },
        {
          "title": "Separating Titles and Subtitles",
          "explanation":
              "A colon can be used to separate a title from its subtitle in books, movies, or other works.",
          "answer": "Colon-oscopy: The Best Punctuation Puns",
          "prompt": ""
        },
        {
          "title": "Avoid Using a Colon",
          "explanation":
              "A colon should not separate a noun from its verb, a verb from its object or subject complement, a preposition from its object, or a subject from its predicate. Colons should also not be used after words like 'including' or 'especially.'",
          "answer": "",
          "prompt":
              "The three types of muscle in the body are: cardiac, smooth, and skeletal."
        },
        {
          "title": "Colon vs. Semicolon",
          "explanation":
              "Colons and semicolons serve similar purposes but accomplish them in different ways.",
          "answer":
              "I think I'll go to the mall today; I need new pants and a pair of shoes.",
          "prompt": ""
        },
        {
          "title": "Capitalization After a Colon",
          "explanation":
              "In British English, the word following a colon is not capitalized unless it is a proper noun or an acronym. In American English, capitalize the first word after a colon if it forms a complete sentence.",
          "answer":
              "There were warning signs that he might not finish the marathon: He barely trained in the days leading up to the race, and he wore the wrong shoes that day.",
          "prompt":
              "There were warning signs that he might not finish the marathon: he barely trained in the days leading up to the race, and he wore the wrong shoes that day."
        },
      ]
    },
    'Semicolon': {
      'introduction': '''
A colon is a punctuation mark that connects sentences, emphasizes words or phrases, and introduces quotes or explanations. It is crucial to maintain a close connection between the preceding and following elements whenever using a colon.
''',
      "rules": [
        {
          "title": "Use semicolons to connect related independent clauses",
          "explanation":
              "You can use a semicolon to join two closely related independent clauses. The group of words before the semicolon should form a complete sentence, the group of words after the semicolon should form a complete sentence, and the two sentences should share a close, logical connection.",
          "answer":
              "I ordered a cheeseburger for lunch; life’s too short for counting calories.",
          "prompt":
              "I ordered a cheeseburger for lunch, life’s too short for counting calories."
        },
        {
          "title":
              "Skip the coordinating conjunction when you use a semicolon between two independent clauses",
          "explanation":
              "When you use a semicolon between two independent clauses, you don't need to use a coordinating conjunction like 'and', 'but', or 'or'. The semicolon alone can link the clauses.",
          "answer": "I saw a magnificent albatross; it was eating a mouse.",
          "prompt": "I saw a magnificent albatross, and it was eating a mouse."
        },
        {
          "title": "Use semicolons in a serial list",
          "explanation":
              "You can use semicolons to divide the items of a list if the items are long or contain internal punctuation. This helps readers keep track of the divisions between the items.",
          "answer":
              "I need the weather statistics for the following cities: London, England; London, Ontario; Paris, France; Paris, Ontario; and Perth, Scotland; Perth, Ontario.",
          "prompt":
              "I need the weather statistics for the following cities: London, England, London, Ontario, Paris, France, Paris, Ontario, and Perth, Scotland, Perth, Ontario."
        },
        {
          "title": "Use semicolons with conjunctive adverbs",
          "explanation":
              "When you have a conjunctive adverb linking two independent clauses, you should use a semicolon between the clauses. Common conjunctive adverbs include words like 'moreover', 'nevertheless', 'however', 'therefore', 'then', 'finally', 'likewise', 'consequently', and many others.",
          "answer":
              "I needed to go for a walk and get some fresh air; also, I needed to buy milk.",
          "prompt":
              "I needed to go for a walk and get some fresh air, also, I needed to buy milk."
        },
        {
          "title": "Use a semicolon to give a wink",
          "explanation":
              "The semicolon is a versatile punctuation mark. It can be used to create complex sentences or to add a playful tone by giving a wink. It adds a touch of personality to your writing.",
          "answer":
              "The semicolon is a good punctuation mark to have in your back pocket; it can give your writing a unique flair.",
          "prompt":
              "The semicolon is a good punctuation mark to have in your back pocket, it can give your writing a unique flair."
        }
      ]
    }
  };
}




// 'comma1': {
//       'examples': [
//         {
//           'prompt': 'the deep blue sea',
//           'answer': 'the deep, blue sea',
//         },
//         {
//           'prompt': 'orange blue yellow',
//           'answer': 'orange, blue, yellow',
//         }
//       ],
//       'title': 'First rule',
//       'explanation': 'The rule states that ...',
//     }