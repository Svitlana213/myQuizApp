import 'package:flutter/material.dart';
import '../models/Category.dart';
import '../models/Question.dart';
import 'score_screen.dart';

class QuestionScreen extends StatefulWidget {
  final Category category;

  QuestionScreen(this.category);

  @override
  _DetailedViewState createState() => _DetailedViewState();
}

class _DetailedViewState extends State<QuestionScreen> {
  late List<Question> _questions;
  int _currentIndex = 0;
  int _correctAnswers = 0;
  int _incorrectAnswers = 0;

  bool _isTrueButtonSelected = false;
  bool _isFalseButtonSelected = false;

  @override
  void initState() {
    super.initState();
    _questions = widget.category.questions;
  }

  void _checkAnswer(bool selectedAnswer) {
    bool correctAnswer = _questions[_currentIndex].answer;
    setState(() {
      _isTrueButtonSelected = selectedAnswer == true;
      _isFalseButtonSelected = selectedAnswer == false;
    });

    if (selectedAnswer == correctAnswer) {
      setState(() {
        _correctAnswers++;
      });
    } else {
      setState(() {
        _incorrectAnswers++;
      });

    }

    if (_currentIndex < _questions.length - 1) {
      setState(() {
        _currentIndex++;
      });
    } else {
      _showScore();
    }
  }
  void _showScore() {
    ScoreScreen.show(context, _correctAnswers, _incorrectAnswers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(widget.category.imageUrl),
            SizedBox(height: 16.0),
            Text(
              _questions[_currentIndex].question,
              style: TextStyle(fontSize: 18.0, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => _checkAnswer(true),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text('True', style: TextStyle(color: Colors.white),),
                ),
                ElevatedButton(
                  onPressed: () => _checkAnswer(false),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text('False', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



