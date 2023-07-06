import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punc_quest/constants.dart';
import 'package:punc_quest/models/lesson_data.dart';
import 'package:punc_quest/models/lesson_model.dart';
import 'package:punc_quest/navigation_and_state/navigation.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({required this.lessonId, super.key});

  final String lessonId;

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  //GOTO
  @override
  Widget build(BuildContext context) {
    var fetchLesson = LessonData().fetch(widget.lessonId);
    if (fetchLesson == null) {
      //Provider.of<AppRouter>(context).router.go('/');
      return Scaffold(
        appBar: AppBar(
          title: Text('Coming soon ...'),
        ),
        body: Center(
          child: Text(
            'Coming soon...',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
    final Map<String, Object> rawLessonData = fetchLesson;

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
        title: Text(widget.lessonId),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Card(
                elevation: 0.2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                // color: Theme.of(context).primaryColor.withOpacity(0.3),
                color: Colors.white.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    lessonIntro,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
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
                    elevation: 0.2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // color: Theme.of(context).primaryColor.withOpacity(0.3),
                    color: Colors.white.withOpacity(0.75),
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
                          Text(
                            lessonRules[index]['explanation']!
                                .replaceAll(RegExp('r/n'), ''),
                          ),
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
  int answerTries = 0;
  bool showAnswer = false;
  @override
  initState() {
    _example = widget.example;
    textFieldController.value = TextEditingValue(text: _example.prompt);
    super.initState();
  }

  checkAnswer() {
    if (answerTries > 2) {
      setState(() {
        showAnswer = true;
      });

      return;
    }
    bool answerIsCorrect = isStringMatchingIgnoringWhitespace(
      textFieldController.text,
      _example.answer,
    );
    ScaffoldMessenger.of(context).clearSnackBars();
    FocusScope.of(context).unfocus();
    if (answerIsCorrect) {
      var dialog = AlertDialog(
        content: Text('Your answer is correct🎉🎉🎉'),
      );
      showDialog(
        context: context,
        builder: (context) {
          return dialog;
        },
      );

      return;
    }

    var dialog = AlertDialog(
      content: Text('Your answer is incorrect 👀'),
    );
    showDialog(
      context: context,
      builder: (context) {
        return dialog;
      },
    );
    answerTries++;
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
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          controller: textFieldController,
          autocorrect: false,
          maxLines: 4,
          minLines: 1,
        ),
        ElevatedButton(
          onPressed: () {
            answerTries = 0;
          },
          child: const Text('Reset'),
        ),
        ElevatedButton(
          onPressed: checkAnswer,
          child: const Text('Check Answer'),
        ),
      ],
    );

    var highlightedTextField = Container(
      child: Card(
        child: Column(
          children: [
            RichText(
              text: TextSpan(children: [
                for (String val in _example.answer.split(' '))
                  TextSpan(
                      text: val, style: const TextStyle(color: Colors.white)),
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

    if (!showAnswer) {
      return initialTextField;
    }

    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          ),
          controller: textFieldController,
          readOnly: true,
          autocorrect: false,
          maxLines: 4,
          minLines: 1,
        ),
        Text(
          'Answer: ${widget.example.answer}',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
      ],
    );
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
