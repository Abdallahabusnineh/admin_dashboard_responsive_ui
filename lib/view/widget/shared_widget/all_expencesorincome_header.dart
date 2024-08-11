import 'package:admin_dashboard_responsive_ui/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AllExpensesOrIncomeHeader extends StatelessWidget {
  const AllExpensesOrIncomeHeader({super.key, required this.title, required this.subtitle});
final String title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: AppStyles.styleSemiBold20(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color(0xFF1F1F1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade200, width: 1),
          ),
          child: Row(
            children: [
              Text(
                subtitle,
                style: AppStyles.styleRegular16(context),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFF064061),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
