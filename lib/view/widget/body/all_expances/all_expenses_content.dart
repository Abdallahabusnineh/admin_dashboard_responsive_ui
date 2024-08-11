import 'package:flutter/material.dart';
import 'all_expences_list.dart';
import 'all_expenses_content_body.dart';

class AllExpensesContent extends StatelessWidget {
  const AllExpensesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: allExpensesListItem
      ),
    );
  }
}
