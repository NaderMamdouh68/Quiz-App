import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz.dart';
import 'package:flutter_application_1/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  Color b = Colors.black;
  Color w = Colors.white;




  int totalScore = 0;
  int questionIndex = 0;

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  final question = [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 15},
        {"text": "Green", "score": 20},
        {"text": "White", "score": 25},
      ]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Rabbit", "score": 10},
        {"text": "Snake", "score": 15},
        {"text": "Elephant", "score": 20},
        {"text": "Lion", "score": 25},
      ]
    },
    {
      "questionText": "What's your favorite instructor?",
      "answers": [
        {"text": "Max", "score": 10},
        {"text": "Max", "score": 15},
        {"text": "Max", "score": 20},
        {"text": "Max", "score": 25},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
          ),
        body: Container(
          color: w,
          margin: const EdgeInsets.all(15),
          child: questionIndex < question.length
              ? Quiz(
                  question: question,
                  questionIndex: questionIndex,
                  answerQuestion: answerQuestion)
              : Result(resetQuiz, totalScore),
        ),
      ),
    );
  }
}
