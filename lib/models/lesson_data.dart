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
              'They spent the day cleaning their living room, kitchen, bedroom, etc',
          "prompt":
              'They spent the day cleaning their living room, kitchen, bedroom, etc..',
        },
        {
          "title": "Other Uses",
          "explanation": "Periods are used in abbreviations and initials.",
          "answer": 'Dr. John Smith attended the conference.',
          "prompt": 'Dr John Smith attended the conference'
        },
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