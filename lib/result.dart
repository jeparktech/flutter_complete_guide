import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'Your score is $resultScore! \n';
    if (resultScore <= 8) {
      resultText += 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText += 'Pretty likable!';
    } else {
      resultText += 'you are ... string?';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz!'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
