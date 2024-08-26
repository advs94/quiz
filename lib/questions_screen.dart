import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/gradient_container.dart';
import 'package:quiz/styled_text.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/models/quiz_question.dart';

const double sizedBoxHeight = 30.0;
const List<QuizQuestion> questionList = questions;
const Color fontColor = Color.fromARGB(255, 201, 153, 251);

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionNumber = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = questionList[currentQuestionNumber];

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
                StyledText(
                  currentQuestion.text,
                  fontColor: fontColor,
                ),
                const SizedBox(
                  height: sizedBoxHeight,
                ),
                // Map answers to AnswerButton widgets and add them to the Column widget
                ...currentQuestion.shuffledAnswers.map(
                  (answer) => AnswerButton(
                    () {
                      answerQuestion(answer);
                    },
                    answer,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
