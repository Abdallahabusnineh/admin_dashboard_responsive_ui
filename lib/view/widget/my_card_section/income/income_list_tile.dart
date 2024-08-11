import 'package:admin_dashboard_responsive_ui/core/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IncomeListTile extends StatelessWidget {
  const IncomeListTile({super.key, required this.text, required this.value, required this.color});
final String text;
final int value;
final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 5,
        backgroundColor: color,
      ),
      title: Text(text,style: AppStyles.styleRegular16(context),maxLines: 2,overflow: TextOverflow.ellipsis,),
      trailing: Text('\$$value',style: AppStyles.styleRegular16(context),),
    );
  }
}
