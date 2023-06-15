class LessonData {
  fetch(String lessonId) {
    return lessonData[lessonId];
  }

  var lessonData = {
    'period': {
      'examples': [
        {
          'prompt': 'the deep blue sea',
          'answer': 'the deep, blue sea',
        },
        {
          'prompt': 'orange blue yellow',
          'answer': 'orange, blue, yellow',
        }
      ],
      'title': 'First rule',
      'explanation': 'The rule states that ...',
    },
    'Commas with lists': {
      'examples': [
        {
          'prompt': 'Julie loves ice cream books and kittens.',
          'answer': [
            'Julie loves ice cream, books, and kittens.',
            'Julie loves ice cream, books and kittens.'
          ],
        },
        {
          'prompt': 'orange blue yellow',
          'answer': 'orange, blue, yellow',
        }
      ],
      'title': 'First rule',
      'explanation': "When you have a list of items with more"
          "than two elements, it's recommended to use commas to separate them."
          "This helps avoid confusion and ensures that each item in the list is"
          "distinct. Remember, you can also choose to include the optional"
          "serial comma before the word 'and' to make the meaning even"
          "clearer. Whether it's a list of nouns, verbs, adjectives, or"
          "clauses, using commas appropriately will make your writing more organized and easier to comprehend.",
    },
    'comma2': {
      'examples': [
        {
          'prompt': 'Thuggery sinister thuggery',
          'answer': 'Thuggery, sinister thuggery',
        }
      ],
      'title': 'Second rule',
      'explanation': 'The rule states that...',
    },
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