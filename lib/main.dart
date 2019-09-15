import 'package:complete_guide/answer.dart';
import 'package:complete_guide/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdex = 0;

  void _answerQuestion() {
    /*
    I order to render the screen, besides extends State<>, I need to wrap the logic
    to update the UI by using the method setState(), like
    */
    setState(() {
      _questionIdex += 1;
    });
    print(_questionIdex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = const [
      {
        'questionText': 'Vilken är din favoritfärg?',
        'answers': ['Svart', 'Röd', 'Blä', 'Grön']
      },
      {
        'questionText': 'Vilket är ditt favoritdjur?',
        'answers': ['Anka', 'Älg', 'Häst', 'Hund']
      },
      {
        'questionText': 'Vad är din favoritmat?',
        'answers': ['Nötkött', 'Pizza', 'Frukt', 'Glass']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Playgroung'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIdex]['questionText']),
            //... add the values from a list to a list. This avoid to neast a list into another one
            ...(questions[_questionIdex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
