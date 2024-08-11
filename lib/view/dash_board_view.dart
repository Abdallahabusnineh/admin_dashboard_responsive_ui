import 'package:admin_dashboard_responsive_ui/core/utils/is_responsive.dart';
import 'package:admin_dashboard_responsive_ui/view/tablet_screen/tablet_screen.dart';
import 'package:admin_dashboard_responsive_ui/view/web_screen/web_screen_view.dart';
import 'package:admin_dashboard_responsive_ui/view/widget/shared_widget/custom_drawer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../core/utils/assets_image.dart';
import 'mobile_screen/mobile_screen.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return SafeArea(
      child: Scaffold(
          appBar: IsResponsive.isMobileScreen(context)

              ? AppBar(
                  title: Text(
                    "Dashboard",
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  elevation: 0,
                  backgroundColor: Color(0xFFF7F9FA),
                ): null,
          drawer: IsResponsive.isMobileScreen(context)
              ? Drawer(
                  child: CustomDrawer(),
                )
              : null,
          backgroundColor: Color(0xFFF7F9FA),
          body: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 800) {
                return MobileScreen();
              } else if (constraints.maxWidth > 800 &&
                  constraints.maxWidth < 1200) {
                return TabletScreen();
              } else {
                return WebScreenView();
              }
            },
          )),
    );
  }
}
