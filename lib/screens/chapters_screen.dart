import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punc_quest/constants.dart';
import 'package:punc_quest/models/lesson_model.dart';
import 'package:punc_quest/navigation_and_state/navigation.dart';

class ChaptersScreen extends StatelessWidget {
  const ChaptersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppRouter.nav,
      appBar: AppBar(
        title: const Text('Chapters'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Chapters',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            ChapterTile(
              chapterTitle: 'Chapter 1: Period and Comma',
              // onTap: (context) {
              //   // Handle navigation to Chapter 1 page
              //   testLesson(context);
              // },
            ),
            ChapterTile(
              chapterTitle: 'Chapter 2: Question Mark and Exclamation Mark',
            ),
            ChapterTile(
              chapterTitle: 'Chapter 3: Quotation Marks and Colon',
            ),
            ChapterTile(
              chapterTitle: 'Chapter 4: Semicolon and Dash',
            ),
            ChapterTile(
              chapterTitle: 'Chapter 5: Parentheses and Apostrophe',
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterTile extends StatelessWidget {
  final String chapterTitle;
  void Function(dynamic)? onTap;

  ChapterTile({
    super.key,
    required this.chapterTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(chapterTitle),
      //TODO: Implement showing drawer of lessons under section [onTap]
      onTap: () {
        testLesson(context);
      },
    );
  }
}

testLesson(context) {
  // var _examples = <Example>[
  //   Example(
  //     answer: 'Thus, we prevailed',
  //     prompt: 'Thus we prevailed',
  //   ),
  //   Example(
  //     answer: 'we parted the sea',
  //     prompt: 'we parted the sea.',
  //   ),
  // ];
  // var _lesson =
  //     Lesson(examples: _examples, explanation: 'explanation', title: 'Test');
  Provider.of<AppRouter>(context, listen: false).router.go(
        '/$lessonsScreen/comma1',
      );
}
