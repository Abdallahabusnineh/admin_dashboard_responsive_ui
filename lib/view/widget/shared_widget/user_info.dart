import 'package:admin_dashboard_responsive_ui/core/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.image, required this.title, required this.subtitle});
final String image;
final String title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(title,style: AppStyles.styleSemiBold16(context),),
          subtitle: Text(subtitle,style: AppStyles.styleRegular12(context),),
        ),
      ),
    );
  }
}
