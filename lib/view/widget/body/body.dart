import 'package:admin_dashboard_responsive_ui/core/utils/is_responsive.dart';
import 'package:admin_dashboard_responsive_ui/view/widget/body/quick_invoice/quick_invoice.dart';
import 'package:flutter/material.dart';

import '../my_card_section/my_card_container/my_card_content.dart';
import 'all_expances/all_expances.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpenses(),
        QuickInvoice(),
        IsResponsive.isWebScreen(context)?SizedBox():MyCardContent(),
      ],
    );
  }
}
