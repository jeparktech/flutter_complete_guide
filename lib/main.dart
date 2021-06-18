import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What is your fav animal?', 'What is your fav color?'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion, //name instead of the function
            ),
            RaisedButton(
              child: Text('Answer 2'),
              // ananymous function
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //...
                print('Answer 3 chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
