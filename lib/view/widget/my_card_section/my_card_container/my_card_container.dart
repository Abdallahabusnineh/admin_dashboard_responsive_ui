import 'package:admin_dashboard_responsive_ui/core/utils/is_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets_image.dart';

class MyCardContainer extends StatelessWidget {
  const MyCardContainer({super.key, required this.mainTitle, required this.userName, required this.cardNumber, required this.expDate});
final String mainTitle,userName,cardNumber,expDate;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mainTitle,
          style: AppStyles.styleSemiBold20(context),
        ),
        SizedBox(
          height: 10,
        ),
        AspectRatio(
            aspectRatio: 420/215,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF4EB7F2),
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(Assets.imagesCardBackground),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                IntrinsicHeight(
                  child: ListTile(
                    title:Text('Name Card',style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),maxLines: 1,overflow:TextOverflow.ellipsis,),
                     subtitle: Text(userName,style: AppStyles.styleMedium20(context),maxLines: 1,overflow:TextOverflow.ellipsis,),
                     trailing: SvgPicture.asset(Assets.imagesGallery),
                      ),
                ),
Expanded(child: SizedBox(height: 10,)),
                  Text(cardNumber,style: AppStyles.styleWhiteSemiBold24(context),maxLines: 1,overflow: TextOverflow.ellipsis,),
                  Text(expDate,style: AppStyles.styleWhiteRegular14(context),overflow: TextOverflow.ellipsis,
                  maxLines: 1,),

                ],
              )
            )),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              width: 32,
              height: 8,
              decoration: BoxDecoration(
                color: Color(0xFF4EB7F2),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              height: 8,
              width: 8,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Color(0xFFE8E8E8),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              height: 8,
              width: 8,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Color(0xFFE8E8E8),
              ),
            ),
          ],
        )
      ],
    );
  }
}
