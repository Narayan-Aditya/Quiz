import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ((data["question_index"] as int) + 1).toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        data["question"] as String,
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data["user_answer"] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 245, 12)),
                      ),
                      Text(
                        data["correct_answer"] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 181, 247, 2)),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
