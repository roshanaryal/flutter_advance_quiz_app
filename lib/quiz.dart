import 'package:flutter/material.dart';
import 'package:flutter_advance_quiz_app/question_screen.dart';
import 'splash_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  final List<String> selectedAnswer = [];

  void choosenAnswer(String answer) {
    selectedAnswer.add(answer);
  }
  @override
  void initState() {
    activeScreen = SplashScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen =  QuestionScreen(onSelectAnswer: choosenAnswer);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 102, 40, 210),
              Color.fromARGB(255, 35, 10, 78),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
