import 'package:admin_dashboard_responsive_ui/core/utils/is_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../income/income.dart';
import '../transaction_history/transaction_history.dart';
import 'my_card_container.dart';
import 'my_card_page_view.dart';

class MyCardContent extends StatelessWidget {
  const MyCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child:
        Column(
          children: [
            MyCardContainer(
              mainTitle: 'My Card',
              userName: 'Abdallah Abu Snineh',
              cardNumber: '0918 8124 0042 8129',
              expDate: '12/20\-124',
            ),
            Divider(
              color: Colors.grey.shade200,
              height: 40,
            ),
            TransactionHistory(),
            SizedBox(
              height: 10,
            ),
            Income()
          ],
        )
    );
  }
}
