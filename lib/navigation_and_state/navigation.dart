import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:punc_quest/constants.dart';

import 'package:punc_quest/screens/screens.dart';

class AppRouter extends ChangeNotifier {
  final router = GoRouter(
    debugLogDiagnostics: true,
    //TODO: add refresh Listnebale
    // initialLocation: '/$onboardingScreen',
    initialLocation: '/$lessonsScreen/comma1',
    routes: [
      GoRoute(
        path: '/$onboardingScreen',
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
  );
}
