import 'package:flutter/material.dart';

class ScoreScreen {
  static void show(BuildContext context, int correctAnswers, int incorrectAnswers) {
    showDialog(
      context: context,
      builder: (context) => Container(
        width: 100,
        height: 100,
        child: AlertDialog(
          backgroundColor: Colors.black,
          alignment: Alignment.center,
          title: Text('Quiz Completed', style: TextStyle(color: Colors.white)),
          content: Container(
            child: Column(
              children: [
                Text('Correct Answers: $correctAnswers', style: TextStyle(color: Colors.white)),
                Text('Incorrect Answers: $incorrectAnswers', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellowAccent,
              ),
              child: Text('Back to categories', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
