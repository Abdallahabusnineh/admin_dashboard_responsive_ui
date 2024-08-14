import 'package:admin_dashboard_responsive_ui/view/widget/body/quick_invoice/quick_invoice_form_field.dart';
import 'package:admin_dashboard_responsive_ui/view/widget/body/quick_invoice/quick_invoice_header.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'latest_transction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            QuickInvoiceHeader(title: 'Quick Invoice',),
            SizedBox(height: 15,),
            LatestTransaction(),
            Divider(
              height: 48,
              color: Color(0xF1F1F1),
            ),
    QuickInvoiceFormField(),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(

                    child: CustomButton(isColorBlue: false, buttonText: 'send')),
                SizedBox(width: 10,),
                Expanded(child: CustomButton(isColorBlue: true, buttonText: 'send'))
              ],
            )
          ],
        ));
  }
}
