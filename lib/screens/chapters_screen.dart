import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punc_quest/constants.dart';
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
              lessonIds: const [
                'Period',
                'Comma',
              ],
              // onTap: (context) {
              //   // Handle navigation to Chapter 1 page
              //   testLesson(context);
              // },
            ),
            ChapterTile(
              chapterTitle: 'Chapter 2: Question Mark and Exclamation Mark',
              lessonIds: const [
                'Question Mark',
                'Exclamation Mark',
              ],
            ),
            ChapterTile(
              chapterTitle: 'Chapter 3: Quotation Marks and Colon',
              lessonIds: [
                'Quotation Marks',
                'Colon',
              ],
            ),
            ChapterTile(
              chapterTitle: 'Chapter 4: Semicolon and Dash',
              lessonIds: [
                'Semicolon',
                'Dash',
              ],
            ),
            ChapterTile(
              chapterTitle: 'Chapter 5: Parentheses and Apostrophe',
              lessonIds: [
                'Parentheses',
                'Apostrophe',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterTile extends StatelessWidget {
  final String chapterTitle;
  late final List<String>? lessonIds;

  ChapterTile({
    super.key,
    required this.chapterTitle,
    this.lessonIds = const ['comingSoon'],
  });

  @override
  Widget build(BuildContext context) {
    // this.lessonIds = lessonIds?? ['coming soon'];
    return MenuBar(children: [
      SubmenuButton(
        child: Text(chapterTitle),
        menuChildren: List<Widget>.generate(lessonIds!.length, (index) {
          return MenuItemButton(
            style: ButtonStyle(
                elevation: MaterialStateProperty.resolveWith((states) => 0.0)),
            child: Text(lessonIds![index]),
            onPressed: () {
              if (lessonIds == ['comingSoon']) {
                Provider.of<AppRouter>(context, listen: false)
                    .router
                    .go('/$lessonsScreen/error');
              }
              Provider.of<AppRouter>(context, listen: false)
                  .router
                  .go('/$lessonsScreen/${lessonIds![index]}');
            },
          );
        }),
        // menuChildren: List.generate(lessonIds?.length ?? 0, (index) {
        //   return MenuItemButton(
        //     child: Text('Period'),
        //     onPressed: () {
        //       Provider.of<AppRouter>(context)
        //           .router
        //           .go('$lessonsScreen/${lessonIds![index]}');
        //     },
        //   );
        // }),
      ),
    ]);

    // return ListTile(
    //   title: Text(chapterTitle),
    //   //TODO: Implement showing drawer of lessons under section [onTap]
    //   onTap: () {
    //     testLesson(context);
    //   },
    // );
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

  // Provider.of<AppRouter>(context, listen: false).router.go(
  //       '/$lessonsScreen/comma1',
  //     );
}
