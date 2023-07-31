import 'package:flutter/material.dart';
import 'package:expense_tracker_app/welcome_screen.dart';
import 'package:expense_tracker_app/expenses_screen.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  var currentScreen = 'Welcome Screen';

  void initiateTracker() {
    setState(() {
      currentScreen = 'Tracker Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = WelcomeScreen(initiateTracker: initiateTracker);

    if (currentScreen == 'Tracker Screen') {
      screenWidget = const ExpensesScreen();
    }

    return MaterialApp(
      home: screenWidget,
    );
  }
}
