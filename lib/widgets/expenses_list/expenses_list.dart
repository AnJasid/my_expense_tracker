import 'package:flutter/material.dart';

import 'package:my_expense_tracker/models/expense.dart';
import 'package:my_expense_tracker/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (BuildContext context, index) =>
          ExpenseItem(expenses[index]),
    );
  }
}