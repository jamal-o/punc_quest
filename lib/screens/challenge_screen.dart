import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:punc_quest/navigation_and_state/navigation.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({super.key});

  @override
  ChallengeScreenState createState() => ChallengeScreenState();
}

class ChallengeScreenState extends State<ChallengeScreen> {
  @override
  void initState() {
    super.initState();
    loadChallengeData(); // TODO:Load challenge data from JSON file
  }

  void loadChallengeData() async {
    //TODO: Load challenge data from a JSON file or any other source
  }

  void checkAnswer(String option) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppRouter.nav,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Quest Mode'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TODO: Implement challenge ui
          ],
        ),
      ),
    );
  }
}
