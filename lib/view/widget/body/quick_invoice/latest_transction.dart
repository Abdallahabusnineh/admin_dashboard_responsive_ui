import 'package:flutter/cupertino.dart';
import '../../../../core/utils/app_styles.dart';
import 'latest_transaction_list.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest Transaction',
              style: AppStyles.styleMedium16(context),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
       /* SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: latestTransactionList.length,
            itemBuilder: (context, index) {
              return IntrinsicWidth(
                child: latestTransactionList[index],
              );
            },
          ),
        )*/
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: latestTransactionList.map((e)=>IntrinsicWidth(
          child: e,
            )).toList(),
          ),
        ),
      ],
    );
  }
}
