import 'package:admin_dashboard_responsive_ui/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context)
        ),
        CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: IconButton(onPressed: (){}, icon: Icon(Icons.add)))
      ],
    );
  }
}
