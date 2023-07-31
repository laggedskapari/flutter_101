import 'package:flutter/material.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreen();
}

class _ExpensesScreen extends State<ExpensesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 50, 52, 55),
      body: Center(
        child: Column(
          children: [
            Text(
              'Expense Tracker',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'JetBrains Mono',
                  color: Colors.limeAccent),
            ),
            Text(
              'Expenses list here.',
              style: TextStyle(
                fontFamily: 'JetBrains Mono',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
