import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:punc_quest/constants.dart';

import 'package:punc_quest/screens/screens.dart';

class AppRouter extends ChangeNotifier {
  final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    //TODO: add refresh Listnebale
    // initialLocation: '/',
    initialLocation: '/$lessonsScreen/comma1',
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
