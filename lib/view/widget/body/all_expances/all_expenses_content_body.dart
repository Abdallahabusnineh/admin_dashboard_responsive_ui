import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_styles.dart';
class AllExpensesContentBody extends StatelessWidget {
  const AllExpensesContentBody({super.key, required this.title, required this.date, required this.amount, required this.containerColorIsActive});


final String title,date,amount;
final bool containerColorIsActive;
  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: containerColorIsActive?AppStyles.styleWhiteSemiBold16(context):AppStyles.styleSemiBold16(context),),
        SizedBox(height: 5,),
        Text(date,style: containerColorIsActive?AppStyles.styleWhiteRegular14(context):AppStyles.styleRegular14(context),),
        SizedBox(height: 10,),
        Text('\$$amount',style: containerColorIsActive?AppStyles.styleWhiteSemiBold24(context):AppStyles.styleSemiBold24(context),),

      ],
    );
  }
}
