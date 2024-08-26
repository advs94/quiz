import 'package:flutter/material.dart';
import 'package:quiz/gradient_container.dart';
import 'package:quiz/questions_summary/questions_summary.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/models/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';

const List<QuizQuestion> questionList = questions;
const double sizedBoxHeight = 30.0;
const String styledTextButtonText = 'Restart Quiz!';
const Color fontColor = Color.fromARGB(255, 230, 200, 253);
const double fontSize = 20.0;
const FontWeight fontWeight = FontWeight.bold;
const TextAlign textAlignment = TextAlign.center;

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.selectedAnswers,
    required this.onRestart,
  });

  final List<String> selectedAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questionList[i].text,
        'correct_answer': questionList[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questionList.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return GradientContainer(
      Center(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            margin: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!",
                  style: GoogleFonts.lato(
                    color: fontColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                  ),
                  textAlign: textAlignment,
                ),
                const SizedBox(
                  height: sizedBoxHeight,
                ),
                QuestionsSummary(summaryData),
                const SizedBox(
                  height: sizedBoxHeight,
                ),
                TextButton.icon(
                  onPressed: onRestart,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.refresh),
                  label: const Text(styledTextButtonText),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
