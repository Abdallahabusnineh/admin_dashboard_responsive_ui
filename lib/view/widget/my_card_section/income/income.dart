import 'package:flutter/material.dart';

import '../../shared_widget/all_expencesorincome_header.dart';
import 'income_chart.dart';
import 'income_list_tile.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          AllExpensesOrIncomeHeader(title: 'Income', subtitle: 'Monthly'),
          Row(
            children: [
              Expanded(
                child: IncomeChart(),
              ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  IncomeListTile(text: 'Design Services', value: 40, color: Color(   0xFF208CC8),),
                  IncomeListTile(text: 'Design Product', value: 25, color: Color(0xFF4EB7F2),),
                  IncomeListTile(text: 'Design royalti', value: 20, color: Color(0xFF064061),),
                  IncomeListTile(text: 'Other', value: 22, color: Color(0xFFE2DECD),),
                ],
              ),
            )
            ],
          )
        ],
      ),
    );
  }
}
