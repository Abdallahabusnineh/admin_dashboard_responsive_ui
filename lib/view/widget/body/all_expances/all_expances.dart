import 'package:flutter/material.dart';

import '../../shared_widget/all_expencesorincome_header.dart';
import 'all_expenses_content.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          AllExpensesOrIncomeHeader(title: 'All Expenses', subtitle: 'Monthly',),
          AllExpensesContent()
        ],
      ),
    );
  }
}
