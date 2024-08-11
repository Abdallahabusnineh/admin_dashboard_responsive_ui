import 'package:flutter/material.dart';

import '../../shared_widget/custom_text_field.dart';
class QuickInvoiceFormField extends StatelessWidget {
  const QuickInvoiceFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CustomTextField(titleTextField: 'Customer Name', hintTextField: 'Type customer name', isHaveIcon: false,)),
            SizedBox(width: 10,),
            Expanded(child: CustomTextField(titleTextField: 'Customer Email', hintTextField: 'Type customer email', isHaveIcon: false,)),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(child: CustomTextField(titleTextField: 'Item Name', hintTextField: 'Type Item name', isHaveIcon: false,)),
            SizedBox(width: 10,),
            Expanded(child: CustomTextField(titleTextField: 'Item Amount', hintTextField: 'USD', isHaveIcon: true,)),
          ],
        ),
      ],
    );
  }
}
