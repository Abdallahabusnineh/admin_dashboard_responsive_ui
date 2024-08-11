import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesContentHeader extends StatelessWidget {
  const AllExpensesContentHeader({super.key, required this.image, required this.containerColorIsActive});

  final String image;
final bool containerColorIsActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CircleAvatar(
            radius: 25,
            backgroundColor: containerColorIsActive?Colors.white.withOpacity(.10):Colors.grey.shade100,
            child: SvgPicture.asset(
              image,
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
      ],
    );
  }
}
