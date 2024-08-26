import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/results_screen.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/models/quiz_question.dart';

const List<QuizQuestion> questionList = questions;
const String startScreen = 'start-screen';
const String questionsScreen = 'questions-screen';
const String resultsScreen = 'results-screen';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activeScreen = startScreen;

  void switchScreen() {
    setState(() {
      activeScreen = questionsScreen;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questionList.length) {
      setState(() {
        activeScreen = resultsScreen;
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = questionsScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == questionsScreen) {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == resultsScreen) {
      screenWidget = ResultsScreen(
        selectedAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: screenWidget,
      ),
    );
  }
}
