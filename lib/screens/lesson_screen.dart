import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punc_quest/constants.dart';
import 'package:punc_quest/models/lesson_data.dart';
import 'package:punc_quest/models/lesson_model.dart';
import 'package:punc_quest/navigation_and_state/navigation.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({required this.lessonId, super.key});

  final String lessonId;
  //GOTO

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> rawLessonData = LessonData().fetch(lessonId);

    List<Map<String, String>> rawExamples =
        rawLessonData['examples'] as List<Map<String, String>>;

    var examples = rawExamples.map<Example>((example) {
      return Example(
        prompt: example['prompt'] as String,
        answer: example['answer'] as String,
      );
    });
    Lesson lessonData = Lesson(
      examples: examples.toList(),
      title: rawLessonData['title'] as String,
      explanation: rawLessonData['explanation'] as String,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson Mode'),
        actions: [
          IconButton(
            onPressed: () => Provider.of<AppRouter>(context, listen: false)
                .router
                .goNamed(chaptersScreen),
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                lessonData.title,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Explanation',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Text(
                  lessonData.explanation,
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Examples',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Container(
              height: 400,
              child: ListView.separated(
                itemBuilder: (context, index) =>
                    InteractiveExample(lessonData.examples[index]),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemCount: lessonData.examples.length,
              ),
            ),
            // Add visual explanation widgets here
          ],
        ),
      ),
    );
  }
}

class InteractiveExample extends StatefulWidget {
  InteractiveExample(this.example, {super.key});
  Example example;
  @override
  State<InteractiveExample> createState() => _InteractiveExampleState();
}

class _InteractiveExampleState extends State<InteractiveExample> {
  TextEditingController textFieldController = TextEditingController();
  late Example _example;
  @override
  initState() {
    _example = widget.example;
    textFieldController.value = TextEditingValue(text: _example.prompt);
    super.initState();
  }

  checkAnswer() {
    bool answerIsCorrect = isStringMatchingIgnoringWhitespace(
      textFieldController.text,
      _example.answer,
    );

    if (answerIsCorrect) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('The answer is correct')),
      );
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('The answer is incorrect')),
    );
  }

  bool isStringMatchingIgnoringWhitespace(String str1, String str2) {
    // Remove whitespace characters from both strings
    String cleanStr1 = str1.replaceAll(RegExp(r'\s+'), '');
    String cleanStr2 = str2.replaceAll(RegExp(r'\s+'), '');

    // Compare the cleaned strings
    return cleanStr1 == cleanStr2;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            TextField(
              controller: textFieldController,
              autocorrect: false,
            ),
            ElevatedButton(
              onPressed: checkAnswer,
              child: const Text('Check'),
            ),
          ],
        ),
      ),
    );
  }
}
