import 'package:admin_dashboard_responsive_ui/core/utils/app_styles.dart';
import 'package:admin_dashboard_responsive_ui/core/utils/assets_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
    DrawerItem(  this.isActive,{super.key, required this.image, required this.title});
final String image,title;
 bool isActive=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isActive = !isActive;
        print('isActive $isActive');
      },
      child: ListTile(
        hoverColor: isActive?Colors.blue:Colors.transparent,
        leading: SvgPicture.asset(image),
        title: Text(title,style: isActive?AppStyles.styleBold16(context):AppStyles.styleRegular16(context),),
        trailing: isActive?Container(
            width: 3.27,
          color: Color(0xFF4EB7F2),
        ):SizedBox(),
      ),
    );

  }
}
