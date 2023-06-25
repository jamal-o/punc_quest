import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punc_quest/navigation_and_state/navigation.dart';
import 'package:punc_quest/constants.dart';

class PunctuationIntroScreen extends StatelessWidget {
  const PunctuationIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Period = Card(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Periods (.)',
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
      drawer: AppRouter.nav,
      appBar: AppBar(
        title: const Text('Discover the Power of Punctuation!'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the world of punctuation marks! Understanding these essential symbols will elevate your writing to new heights of clarity and impact. Let\'s explore the basic punctuation marks and their purposes:',
            ),
            const SizedBox(height: 20.0),
            Expanded(
              flex: 1,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: basic.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // color: Theme.of(context).primaryColor.withOpacity(0.3),
                    color: Colors.grey.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              basic[index]['title']!.toUpperCase(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Purpose:${basic[index]['purpose']!}',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Usage: ${basic[index]['usage']}',
                            ),
                            Divider(
                              height: 15,
                              thickness: 1,
                              color: Colors.black,
                            ),
                            Text(
                              'Example: ${basic[index]['example']!}',
                            ),
                          ]),
                    ),
                  );
                },
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
                  .goNamed(chaptersScreen),
              child: const Text('Learning Pages'),
            ),
          ],
        ),
      ),
    );
  }
}

var basic = [
  {
    'title': 'Period',
    "purpose": "The period signifies the end of a sentence.",
    "example": "I love to read.",
    "usage": "Use it to convey a complete thought or statement."
  },
  {
    'title': "comma",
    "purpose":
        "The comma separates words, phrases, or clauses within a sentence.",
    "example": "She walked slowly, enjoying the beautiful scenery.",
    "usage":
        "Use it to indicate pauses, list items, or provide additional information."
  },
  {
    'title': "question Mark",
    "purpose": "The question mark denotes a direct question.",
    "example": "Where is the nearest bookstore?",
    "usage": "Use it at the end of an interrogative sentence."
  },
  {
    'title': "exclamation Mark",
    "purpose":
        "The exclamation mark expresses strong emotions or exclamatory statements.",
    "example": "What an incredible performance!",
    "usage": "Use it to convey excitement, surprise, or urgency."
  },
  {
    'title': "quotation Marks",
    "purpose": "Quotation marks enclose direct speech or a quote.",
    "example": 'He said, "I\'ll be there soon."',
    "usage": "Use them to indicate dialogue or to cite someone's exact words."
  },
  {
    'title': "colon",
    "purpose": "The colon introduces a list, explanation, or example.",
    "example":
        "Please bring the following items: a pen, notebook, and calculator.",
    "usage": "Use it to signal a forthcoming explanation or list."
  },
  {
    'title': "semicolon",
    "purpose":
        "The semicolon connects two closely related independent clauses.",
    "example": "I love to write; it's my passion.",
    "usage": "Use it instead of a period to link related thoughts."
  },
  {
    'title': "dash",
    "purpose":
        "The dash indicates a pause or emphasizes a phrase within a sentence.",
    "example": "She was hesitant - uncertain of her decision.",
    "usage":
        "Use it to provide emphasis, interruption, or create a dramatic effect."
  },
  {
    'title': "parentheses",
    "purpose": "Parentheses enclose additional information or clarification.",
    "example": "He loves reading (especially fantasy novels).",
    "usage": "Use them to include non-essential information or explanations."
  },
  {
    'title': "apostrophe",
    "purpose": "The apostrophe indicates possession or contraction.",
    "example": "Sara's book or can't (short for cannot)",
    "usage": "Use it to indicate possession or contraction."
  }
];
