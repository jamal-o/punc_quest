import 'package:flutter/material.dart';
import 'package:punc_quest/models/lesson_model.dart';

class PunctuationRuleScreen extends StatelessWidget {
  const PunctuationRuleScreen({required this.lessonData, super.key});

  final Lesson lessonData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson Mode'),
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
            ListView.separated(
              itemBuilder: (context, index) =>
                  const InteractiveExample(lessonData.examples[index]),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: lessonData.examples.length,
            ),
            // Add visual explanation widgets here
          ],
        ),
      ),
    );
  }
}

class InteractiveExample extends StatefulWidget {
  InteractiveExample({required this.example, super.key});
  Example example;
  @override
  State<InteractiveExample> createState() => _InteractiveExampleState();
}

class _InteractiveExampleState extends State<InteractiveExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            TextField(),
            ElevatedButton(
              onPressed: onPressed,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
