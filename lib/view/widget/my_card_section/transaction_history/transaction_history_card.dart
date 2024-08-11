import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class TransactionHistoryCard extends StatelessWidget {
  const TransactionHistoryCard({super.key, required this.title, required this.date, required this.amount, required this.isWithdrawal});
final String title,date,amount;
final bool isWithdrawal;
  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          title: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            date,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleGreyColorRegular16(context),
          ),
          trailing: Text(
            '\$$amount',
            style: isWithdrawal?AppStyles.styleRedSemiBold20(context):AppStyles.styleGreenSemiBold20(context),
          ),
        ),
      ),
    );
  }
}
