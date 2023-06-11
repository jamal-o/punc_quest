import 'package:flutter/material.dart';

class ChaptersScreen extends StatelessWidget {
  const ChaptersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onTap: () {
                // Handle navigation to Chapter 1 page
              },
            ),
            ChapterTile(
              chapterTitle: 'Chapter 2: Question Mark and Exclamation Mark',
              onTap: () {
                // Handle navigation to Chapter 2 page
              },
            ),
            ChapterTile(
              chapterTitle: 'Chapter 3: Quotation Marks and Colon',
              onTap: () {
                // Handle navigation to Chapter 3 page
              },
            ),
            ChapterTile(
              chapterTitle: 'Chapter 4: Semicolon and Dash',
              onTap: () {
                // Handle navigation to Chapter 4 page
              },
            ),
            ChapterTile(
              chapterTitle: 'Chapter 5: Parentheses and Apostrophe',
              onTap: () {
                // Handle navigation to Chapter 5 page
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterTile extends StatelessWidget {
  final String chapterTitle;
  final Function onTap;

  ChapterTile({
    super.key,
    required this.chapterTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(chapterTitle),
      onTap: () {
        onTap();
      },
    );
  }
}
