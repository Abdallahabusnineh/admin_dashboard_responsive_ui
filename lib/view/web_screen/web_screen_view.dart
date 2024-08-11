import 'package:flutter/material.dart';

import '../widget/body/body.dart';
import '../widget/my_card_section/my_card_container/my_card_content.dart';
import '../widget/shared_widget/custom_drawer.dart';

class WebScreenView extends StatelessWidget {
  const WebScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: BodyScreen()),
        Expanded(flex: 2, child: MyCardContent()),
      ],
    );
  }
}
