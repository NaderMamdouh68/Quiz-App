import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String answerText;
  final Function() selectAnswer;

  const Answer(this.selectAnswer, this.answerText, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: selectAnswer,
        child:  Text(
          answerText,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
