import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIdex = 0;

  void aswerdQuestion() {
    /*
    I order to render the screen, besides extends State<>, I need to wrap the logic
    to update the UI by using the method setState(), like
    */
    setState(() {
      questionIdex += 1;
    });
    print(questionIdex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Playgroung'),
        ),
        body: Column(
          children: [
            Text(questions[questionIdex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => aswerdQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => aswerdQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => aswerdQuestion(),
            ),
          ],
        ),
      ),
    );
  }
}
