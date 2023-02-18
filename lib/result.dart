import 'package:flutter/material.dart';

class Result extends StatelessWidget {


  final Function() resetQuiz;
  final int totalScore;
  const Result(this.resetQuiz,this.totalScore, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            "You Scored $totalScore points!",
            style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: const Text("Restart Quiz",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
