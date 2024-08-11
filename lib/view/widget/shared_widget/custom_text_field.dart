import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.titleTextField,
      required this.hintTextField,
      required this.isHaveIcon});

  final String titleTextField, hintTextField;
  final bool isHaveIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleTextField,
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          readOnly: true,
          decoration: InputDecoration(
            label: Row(
              children: [
                Expanded(
                  child: Text(
                    hintTextField,
                    style: AppStyles.styleGreyColorRegular16(context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                isHaveIcon
                    ? IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xFF064061),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            fillColor: Color(0xFFFAFAFA),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFFAFAFA),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFFAFAFA),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
