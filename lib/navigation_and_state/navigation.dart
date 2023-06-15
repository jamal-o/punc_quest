import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:punc_quest/constants.dart';

import 'package:punc_quest/screens/screens.dart';

class AppRouter extends ChangeNotifier {
  static Drawer nav = Drawer(
    child: ListView.builder(
      itemCount: chapters.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(chapters[index].chapterTitle),
        );
      },
    ),
  );

  final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    //TODO: add refresh Listnebale
    // initialLocation: '/',
    initialLocation: '/$lessonsScreen/period',
    routes: [
      GoRoute(
        path: '/',
        name: onboardingScreen,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: '/$punctuationMarksScreen',
        name: punctuationMarksScreen,
        builder: (context, state) => const PunctuationIntroScreen(),
      ),
      GoRoute(
        path: '/$lessonsScreen/:lessonId',
        name: lessonsScreen,
        builder: (context, state) => LessonScreen(
          lessonId: state.pathParameters['lessonId']!,
        ),
      ),
      GoRoute(
        path: '/$challengeScreen',
        name: challengeScreen,
        builder: (context, state) => const ChallengeScreen(),
      ),
      GoRoute(
        path: '/$chaptersScreen',
        name: chaptersScreen,
        builder: (context, state) => const ChaptersScreen(),
      ),
    ],
    errorBuilder: (context, state) {
      switch (state.error) {
        default:
          return Scaffold(
            drawer: nav,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Looks like you got lost'),
                TextButton(
                  onPressed: () {
                    Provider.of<AppRouter>(context, listen: false)
                        .router
                        .go('/');
                  },
                  child: const Text('Home'),
                ),
              ],
            ),
          );
      }
    },
  );
}

class Chapter {
  const Chapter({
    required this.chapterTitle,
    this.description = '',
    required this.path,
  });
  final String chapterTitle, description, path;
}

const chapters = <Chapter>[
  Chapter(
    chapterTitle: 'Chapter 1: Period and Comma',
    path: '',
  ),
  Chapter(
    chapterTitle: 'Chapter 2: Question Mark and Exclamation Mark',
    path: '',
  ),
  Chapter(
    chapterTitle: 'Chapter 3: Quotation Marks and Colon',
    path: '',
  ),
  Chapter(
    chapterTitle: 'Chapter 4: Semicolon and Dash',
    path: '',
  ),
  Chapter(
    chapterTitle: 'Chapter 5: Parentheses and Apostrophe',
    path: '',
  ),
];
