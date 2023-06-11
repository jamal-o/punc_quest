class LessonData {
  fetch(String lessonId) {
    return lessonData[lessonId];
  }

  var lessonData = {
    'comma1': {
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
