import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'Welcome Screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'Quiz Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 40, 40, 43),
        body: Center(
          child: Text(
            'Hello',
            style: TextStyle(
                fontFamily: 'JetBrains',
                color: Color.fromARGB(255, 226, 183, 20),
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
