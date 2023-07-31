import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Expense {
  Expense({ required this.title, required this.amount, required this.date, required this.category}) : id = uuid.v4();

  final String title;
  final String id;

  final double amount;
  final DateTime date;
  final String category;
}