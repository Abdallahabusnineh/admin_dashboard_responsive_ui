import 'package:admin_dashboard_responsive_ui/view/widget/body/quick_invoice/quick_invoice.dart';
import 'package:flutter/material.dart';

import 'all_expances/all_expances.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        AllExpenses(),
        QuickInvoice(),
      ],
    );
  }
}
