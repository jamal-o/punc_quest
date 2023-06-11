import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punc_quest/navigation_and_state/navigation.dart';
import 'package:punc_quest/constants.dart';

class PunctuationIntroScreen extends StatelessWidget {
  const PunctuationIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var period = Card(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Period (.)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '- Purpose: The period signifies the end of a sentence.',
          ),
          Text(
            '- Example: "I love to read."',
          ),
          Text(
            '- Use it to convey a complete thought or statement.',
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover the Power of Punctuation!'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the world of punctuation marks! Understanding these essential symbols will elevate your writing to new heights of clarity and impact. Let\'s explore the basic punctuation marks and their purposes:',
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  period,
                  period,
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Continue your punctuation quest to become a skilled writer who wields punctuation with finesse and precision.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Provider.of<AppRouter>(context, listen: false)
                  .router
                  .goNamed(lessonsScreen),
              child: const Text('Learning Pages'),
            ),
          ],
        ),
      ),
    );
  }
}
