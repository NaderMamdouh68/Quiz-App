import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int) answerQuestion;

  const Quiz({super.key, 
    required this.question,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]["questionText"].toString()),
        ...(question[questionIndex]["answers"] as List<Map<String,Object>>).map((answer) {
          return Answer(()=> answerQuestion(int.parse(answer['score'].toString())), answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
