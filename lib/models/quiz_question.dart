class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffeledAnswer() {
    final List<String> shuffeledAnswer = List.of(answers);
    shuffeledAnswer.shuffle();
    return shuffeledAnswer;
  }
}
