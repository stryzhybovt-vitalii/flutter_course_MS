class QuizQuestion {
  const QuizQuestion({required this.question, required this.answers});

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final newList = List.of(answers);

    newList.shuffle();

    return newList;
  }
}
