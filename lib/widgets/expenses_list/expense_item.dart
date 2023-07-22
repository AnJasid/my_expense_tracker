import 'package:flutter/material.dart';

import 'package:my_expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: <Widget>[
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: <Widget>[
                Text(
                  '₱ ${expense.amount.toStringAsFixed(2)}',
                ),
                const Spacer(),
                Row(
                  children: <Widget>[
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
