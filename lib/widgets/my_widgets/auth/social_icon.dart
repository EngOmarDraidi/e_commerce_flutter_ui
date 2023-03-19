import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '';

class SocialIcon extends StatelessWidget {
  final void Function()? onTap;
  final String icon;
  const SocialIcon({this.onTap, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        padding: EdgeInsets.all(12.w),
        height: 40.h,
        width: 40.w,
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
