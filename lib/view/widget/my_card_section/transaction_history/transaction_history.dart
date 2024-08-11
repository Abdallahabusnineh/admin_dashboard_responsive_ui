import 'package:admin_dashboard_responsive_ui/view/widget/my_card_section/transaction_history/transaction_header.dart';
import 'package:admin_dashboard_responsive_ui/view/widget/my_card_section/transaction_history/transaction_history_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHeader(
          title: 'Transaction History',
          buttonText: 'See All',
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(height: 10,),
       Column(
         children: transactionHistoryList.map((e)=>IntrinsicHeight(
           child: e,
     )).toList(),
       )
      ],
    );
  }
}
