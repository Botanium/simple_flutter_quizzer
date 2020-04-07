import 'package:simple_flutter_quizzer/question.dart';

int _questionNumber = 0;

class QuestionController {
  List<Question> _questionBank = [
    Question(questionText: 'first question', questionAnswer: true),
    Question(questionText: 'second question', questionAnswer: true),
    Question(questionText: 'third question', questionAnswer: false),
    Question(questionText: 'fouth question', questionAnswer: false),
    Question(questionText: 'fifth question', questionAnswer: false),
    Question(questionText: 'sixth question', questionAnswer: true),
    Question(questionText: 'seventh question', questionAnswer: false),
    Question(questionText: 'eight question', questionAnswer: true),
    Question(questionText: 'nineth question', questionAnswer: true),
  ];

  String getQuestionText() => _questionBank[_questionNumber].questionText;

  bool getQuestionAsnwer() => _questionBank[_questionNumber].questionAnswer;

  void nextQuestion() => _questionNumber++;
}
