class QuizQuestion {
  const QuizQuestion(this.question, this.answers);
  
  final String question;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    final suffleList = List.of(answers);
    suffleList.shuffle();
    return suffleList;
  }
}