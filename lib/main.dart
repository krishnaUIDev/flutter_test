import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

//Scaffold is the entire widget holder
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// if we use _ then widget turn to private widget or else it will public
class _MyAppState extends State<MyApp> {
  var _quesionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _quesionIndex = _quesionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whats your favoraite color?',
      'Whats your favoraite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_quesionIndex],
            ),
            RaisedButton(
              child: Text(
                'Answer1',
              ),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text(
                'Answer2',
              ),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text(
                'Answer 3',
              ),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
