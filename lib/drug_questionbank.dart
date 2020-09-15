import 'question.dart';

class DrugQuizBrain {
  int questionNumber = 0;

  List<Question> _drugQuestionBank = [
    Question('What is bad?', ['Drugs', 'Money', 'Love'], 'Drugs'),
    Question(
        'What is the leading case law on possession?', ['1', '2', '3'], '2'),
    Question('Is this the third question?', ['yes', 'no', 'maybe'], 'yes')
  ];

  void nextQuestion() {
    if (questionNumber < _drugQuestionBank.length - 1) {
      questionNumber++;
    }
  }

  String getQuestionText() {
    return _drugQuestionBank[questionNumber].questionText;
  }

  String getCorrectAnswer() {
    return _drugQuestionBank[questionNumber].correctAnswer;
  }
}
