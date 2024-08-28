import 'package:admin_dashboard_responsive_ui/core/utils/is_responsive.dart';
import 'package:admin_dashboard_responsive_ui/view/widget/body/body.dart';
import 'package:admin_dashboard_responsive_ui/view/widget/my_card_section/my_card_container/my_card_content.dart';
import 'package:admin_dashboard_responsive_ui/view/widget/shared_widget/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      appBar: IsResponsive.isMobileScreen(context)?
     AppBar(
        title: Text(
          "Dashboard",
          maxLines: 1,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        elevation: 0,
        backgroundColor: Color(0xFFF7F9FA),
      ):null,
      drawer: IsResponsive.isMobileScreen(context)?SafeArea(
        top: true,
        bottom: false,
        child: Drawer(
          child: CustomDrawer(),
        ),
      ):null,
      body: Row(
        children: [
          IsResponsive.isMobileScreen(context)?
          const SizedBox():Expanded(child: CustomDrawer()),
          Expanded(
            flex: IsResponsive.isWebScreen(context)?4:3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(flex: 3, child: BodyScreen()),
                      IsResponsive.isWebScreen(context)
                          ? Expanded(
                          flex: 2,
                          child: MyCardContent())
                          : SizedBox()
                    ],
                  ),
                ),
              ]

            ),
          ),

        ],
      ),
    );
  }
}
