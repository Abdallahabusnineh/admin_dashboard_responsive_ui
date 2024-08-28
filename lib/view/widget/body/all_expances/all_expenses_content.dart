import 'package:admin_dashboard_responsive_ui/core/utils/is_responsive.dart';
import 'package:flutter/material.dart';
import 'all_expences_list.dart';
import 'all_expenses_content_body.dart';

class AllExpensesContent extends StatelessWidget {
  const AllExpensesContent({super.key});

  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
            children: allExpensesListItem,
      )
        );
  }
}
