import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punc_quest/navigation_and_state/navigation.dart';
import 'package:punc_quest/constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome to PuncQuest!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Engage in an exciting journey to master punctuation rules through gamified learning.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Why Learn Punctuation?',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Punctuation plays a crucial role in clear communication. Mastering punctuation enhances your writing skills and boosts your confidence.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Gamified Learning Experience',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Embark on an adventure where you'll navigate punctuation challenges, earn rewards, and unlock achievements. Immerse yourself in an interactive world that makes learning punctuation enjoyable.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Provider.of<AppRouter>(context, listen: false)
                    .router
                    .goNamed(punctuationMarksScreen);
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
