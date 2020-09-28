import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// inheritance
//Scaffold is the entire widget holder
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var quesionIndex = 0;
  void answerQuestion() {
    setState(() {
      quesionIndex = quesionIndex + 1;
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
            Text(
              questions[quesionIndex],
            ),
            RaisedButton(
              child: Text(
                'Answer1',
              ),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text(
                'Answer2',
              ),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text(
                'Answer 3',
              ),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
