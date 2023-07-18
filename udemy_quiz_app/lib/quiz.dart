import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/welcome_screen.dart';
import 'package:udemy_quiz_app/quizscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var currentScreen = 'Welcome Screen';

  void startQuizGame() {
    setState(() {
      currentScreen = 'Quiz Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 16, 16, 16),
        body: Center(
          child: currentScreen == 'Welcome Screen'
              ? WelcomeScreen(startQuizGame)
              : const QuizScreen(),
        ),
      ),
    );
  }
}
