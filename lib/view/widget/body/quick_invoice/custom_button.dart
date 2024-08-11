import 'package:admin_dashboard_responsive_ui/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.isColorBlue, required this.buttonText});
final bool isColorBlue;
final String buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(

          backgroundColor: isColorBlue?Color(0xFF4EB7F2):Colors.white,
          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(12),
          ),
        ),
          child: Text(buttonText,style:isColorBlue?AppStyles.styleSemiBold18(context): AppStyles.styleBlueSemiBold18(context),),),
    );
  }
}
