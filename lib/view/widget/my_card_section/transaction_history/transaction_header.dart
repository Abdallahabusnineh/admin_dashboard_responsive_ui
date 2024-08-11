import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key, required this.title, required this.buttonText});
final String title,buttonText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Text(title,style: AppStyles.styleSemiBold20(context),maxLines: 1,overflow: TextOverflow.ellipsis,)),
     TextButton(onPressed: (){}, child: Text(buttonText,maxLines:1,overflow: TextOverflow.ellipsis, style: AppStyles.styleBlue16(context),),)
      ],
    );
  }
}
