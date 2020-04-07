import 'package:flutter/material.dart';
import 'question_controller.dart';

void main() {
  runApp(MyApp());
}

QuestionController qc = QuestionController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple flutter Quiz App',
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  bool userPickedAnswer;
  List<Widget> scores = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Quiz App')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              qc.getQuestionText(),
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              color: Colors.green,
              onPressed: () {
                bool correctAnswer = qc.getQuestionAsnwer();
                userPickedAnswer = true;
                setState(() {
                  if (correctAnswer == userPickedAnswer) {
                    scores.add(Icon(Icons.check, color: Colors.green));
                    print("correct");
                  } else {
                    scores.add(Icon(Icons.close, color: Colors.red));
                    print('wrong');
                  }
                  qc.getQuestionAsnwer();
                });
                qc.nextQuestion();
                print('I got pressed');
              },
              child: Text(
                'True',
                style: TextStyle(color: Colors.white),
              ),
            ),
            FlatButton(
              color: Colors.red,
              onPressed: () {
                setState(() {
                  scores.add(Icon(Icons.check, color: Colors.green));
                  qc.getQuestionAsnwer();
                });
                print('you clicked on false button');
                print(scores);
              },
              child: Text(
                'False',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              children: scores,
            )
          ],
        ),
      ),
    );
  }
}
