import 'package:flutter/material.dart';
import 'package:expense_tracker_app/model/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (BuildContext context, index) => Text(
        expenses[index].title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
