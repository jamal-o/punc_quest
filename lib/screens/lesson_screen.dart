import 'dart:async';

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

    final String lessonIntro = rawLessonData['introduction'] as String;
    final List<Map<String, String>> lessonRules =
        rawLessonData['rules'] as List<Map<String, String>>;

    return Scaffold(
      drawer: AppRouter.nav,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Provider.of<AppRouter>(context, listen: false)
              .router
              .goNamed(chaptersScreen),
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(lessonId),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey,
              ),
              padding: const EdgeInsets.all(16.0),
              child: Text(
                lessonIntro,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // padding: EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.center,
              child: Text(
                'Rules',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Divider(
              height: 10,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white10,
                    margin: EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              lessonRules[index]['title']!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                          Text(lessonRules[index]['explanation']!),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Example:',
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          InteractiveExample(
                            Example(
                              prompt: lessonRules[index]['prompt']!,
                              answer: lessonRules[index]['answer']!,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: lessonRules.length,
              ),
            ),

            // Container(
            //   padding: const EdgeInsets.all(16.0),
            //   child: const Text(
            //     'Explanation',
            //     style: TextStyle(fontSize: 18.0),
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Card(
            //     child: Text(
            //       lessonData.explanation,
            //       style: const TextStyle(fontSize: 18.0),
            //     ),
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.all(16.0),
            //   child: const Text(
            //     'Example',
            //     style: TextStyle(fontSize: 18.0),
            //   ),
            // ),
            // SizedBox(
            //   height: 400,
            //   child: ListView.separated(
            //     itemBuilder: (context, index) =>
            //         InteractiveExample(lessonData.examples[index]),
            //     separatorBuilder: (context, index) => const SizedBox(
            //       height: 20,
            //     ),
            //     itemCount: lessonData.examples.length,
            //   ),
            // ),
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
    ScaffoldMessenger.of(context).clearSnackBars();
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
    var initialTextField = Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          ),
          controller: textFieldController,
          autocorrect: false,
          maxLines: 4,
          minLines: 1,
        ),
        ElevatedButton(
          onPressed: checkAnswer,
          child: const Text('Check Answer'),
        ),
      ],
    );
    int count = 0;
    var highlightedTextField = Container(
      child: Card(
        child: Column(
          children: [
            RichText(
              text: TextSpan(children: [
                for (String val in _example.answer.split(' '))
                  TextSpan(
                      text: val, style: const TextStyle(color: Colors.grey)),
              ]),
            ),
            ElevatedButton(
              onPressed: checkAnswer,
              child: const Text('Check'),
            ),
          ],
        ),
      ),
    );
    return initialTextField;
    // return highlightedTextField;

    // return Card(
    //   child: Column(children: [
    //     initialTextField,
    //     const SizedBox(
    //       height: 12,
    //     ),
    //     highlightedTextField,
    //   ]),
    // );
  }
}
