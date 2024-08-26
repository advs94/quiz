import 'package:flutter/material.dart';
import 'package:quiz/gradient_container.dart';
import 'package:quiz/styled_text.dart';
import 'package:quiz/styled_text_button.dart';

const String imagePath = 'assets/images/quiz-logo.png';
const double imageWidth = 300.0;
const Color imageColor = Color.fromARGB(150, 255, 255, 255);
const double firstSizedBoxHeight = 80.0;
const String firstText = 'Learn Flutter the fun way!';
const double secondSizedBoxHeight = 30.0;
const String styledTextButtonText = 'Start Quiz';
const Color fontColor = Color.fromARGB(255, 201, 153, 251);

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imagePath,
              width: imageWidth,
              color: imageColor,
            ),
            const SizedBox(
              height: firstSizedBoxHeight,
            ),
            const StyledText(
              firstText,
              fontColor: fontColor,
            ),
            const SizedBox(
              height: secondSizedBoxHeight,
            ),
            StyledTextButton(
              startQuiz,
              styledTextButtonText,
              iconData: Icons.arrow_right_alt,
            ),
          ],
        ),
      ),
    );
  }
}
