import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer, required this.onTap});

  final List<String> chosenAnswer;
  final void Function() onTap;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question": questions[i].question,
          "correct_answer": questions[i].answers[0],
          "user_answer": chosenAnswer[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summartData = getSummaryData();
    final numberOfQuestions = questions.length;
    final numberOfCoreect = summartData.where(
      (data) {
        return data["user_answer"] == data["correct_answer"];
      },
    ).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numberOfCoreect out of $numberOfQuestions questions courrectly !",
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summartData),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: onTap,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 220, 229, 245),
                backgroundColor: const Color.fromARGB(249, 111, 59, 235),
                fixedSize: const Size.fromHeight(69),
              ),
              label: const Text("Restart Quiz", style: TextStyle(fontSize: 20),),
              icon: const Icon(Icons.restart_alt_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
