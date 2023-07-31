import 'package:flutter/material.dart';
import 'package:expense_tracker_app/model/expense.dart';
import 'package:expense_tracker_app/expenses_list.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreen();
}

class _ExpensesScreen extends State<ExpensesScreen> {
  final List<Expense> _registeredList = [
    Expense(
        title: 'Flutter Course',
        category: Category.work,
        date: DateTime.now(),
        amount: 19.99),
    Expense(
        title: 'Apple Developer Account',
        category: Category.work,
        date: DateTime.now(),
        amount: 99.99),
    Expense(
        title: 'Google Developer Account',
        category: Category.work,
        date: DateTime.now(),
        amount: 19.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 50, 52, 55),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Expense Tracker',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'JetBrains Mono',
                  color: Colors.limeAccent),
            ),
            Expanded(
              child: ExpensesList(expenses: _registeredList),
            )
          ],
        ),
      ),
    );
  }
}
