import 'package:admin_dashboard_responsive_ui/core/utils/is_responsive.dart';
import 'package:admin_dashboard_responsive_ui/view/screens/mobile_screen/mobile_screen.dart';
import 'package:admin_dashboard_responsive_ui/view/screens/tablet_screen/tablet_screen.dart';
import 'package:admin_dashboard_responsive_ui/view/screens/web_screen/web_screen_view.dart';
import 'package:admin_dashboard_responsive_ui/view/widget/shared_widget/custom_drawer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../core/utils/assets_image.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return MediaQuery.of(context).size.width < 800
        ? MobileScreen()
        : MediaQuery.sizeOf(context).width >= 800 &&
                MediaQuery.sizeOf(context).width <= 1100
            ? TabletScreen()
            : WebScreenView();
  }
}
