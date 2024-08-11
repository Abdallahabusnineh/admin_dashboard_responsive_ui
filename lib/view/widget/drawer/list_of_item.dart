import 'package:flutter/material.dart';

import '../../../core/utils/assets_image.dart';
import 'list_drawer_item.dart';

class ListOfItemDrawer extends StatelessWidget {
  ListOfItemDrawer({super.key});
  List<Widget> listOfItemDrawer = [
    DrawerItem(true,image: Assets.imagesDashboard, title: 'Dashboard', ),
    DrawerItem(false,image: Assets.imagesMyTransctions, title: 'My Transaction',),
    DrawerItem(false,image: Assets.imagesStatistics, title: 'Statistics',),
    DrawerItem(false,image: Assets.imagesWalletAccount, title: 'Wallet Account',),
    DrawerItem(false, image: Assets.imagesMyInvestments, title: 'My Investment',),

  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: listOfItemDrawer.length,
      itemBuilder: (context, index) {
      return listOfItemDrawer[index];
    },);
  }
}
