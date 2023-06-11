class Lesson {
  Lesson(
      {required this.examples, required this.title, required this.explanation});
  late List<Example> examples;
  late String title;
  late String explanation;
}

class Example {
  Example({required this.prompt, required this.answer});
  late String prompt;
  late String answer;
}
