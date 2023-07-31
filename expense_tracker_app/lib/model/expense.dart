import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { work, travel, leisure, food }

class Expense {
  Expense({ required this.title, required this.category, required this.date, required this.amount}) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}