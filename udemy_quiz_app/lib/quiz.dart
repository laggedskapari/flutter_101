import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/welcome_screen.dart';
import 'package:udemy_quiz_app/quizscreen.dart';
import 'package:udemy_quiz_app/model/questions.dart';
import 'package:udemy_quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedOptions = [];
  var currentScreen = 'Welcome Screen';

  void startQuizGame() {
    setState(() {
      currentScreen = 'Quiz Screen';
    });
  }

  void selectOption(String option) {
    selectedOptions.add(option);

    if (selectedOptions.length == questions.length) {
      setState(() {
        currentScreen = 'Result Screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = WelcomeScreen(startQuizGame);

    if(currentScreen == 'Quiz Screen') {
      screenWidget = QuizScreen(onSelectOption: selectOption);
    }

    if(currentScreen == 'Result Screen') {
      screenWidget = ResultScreen(selectedOptions: selectedOptions);
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 16, 16, 16),
        body: Center(
          child: screenWidget,
        ),
      ),
    );
  }
}
