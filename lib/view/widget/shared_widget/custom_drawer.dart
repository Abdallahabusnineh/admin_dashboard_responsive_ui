import 'package:admin_dashboard_responsive_ui/view/widget/shared_widget/user_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/assets_image.dart';
import '../drawer/list_drawer_item.dart';
import '../drawer/list_of_item.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfo(
                image: Assets.userImage3,
                title: 'Lekan Okeowo',
                subtitle: 'abbusninehabdallah@gmail.com'),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 8,
          )),
      ListOfItemDrawer(),
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: Column(
              children: [
              Spacer(),
                DrawerItem(
                  false,
                  image: Assets.imagesSettings,
                  title: 'Setting System',
                ),
                DrawerItem(
                  false,
                  image: Assets.imagesLogout,
                  title: 'Logout Account',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
              ],
              
            ),
          )
        ],
      ),
    );
  }
}
