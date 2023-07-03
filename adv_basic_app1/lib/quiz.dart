import 'package:flutter/material.dart';
import 'package:adv_basic_app1/welcome_widget.dart';
import 'package:adv_basic_app1/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({ super.key });

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen =  WelcomeWidget(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 16, 16, 16),
        body: Center(
          child: activeScreen,
        ),
      ),
    );
  }
}