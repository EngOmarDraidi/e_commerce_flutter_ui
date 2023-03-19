import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../flutter_widgets/custom_container.dart';
import '../../flutter_widgets/custom_text.dart';
import '../../flutter_widgets/custom_icon.dart';

class HeaderScreen extends StatelessWidget {
  final double rating;

  const HeaderScreen({required this.rating, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButtonIcon(
            width: 40.h,
            height: 40.h,
            onPressed: () => Navigator.of(context).pop(),
            backgroundColor: Colors.white,
            icon: Icons.arrow_back_ios,
            iconSize: 20.h,
          ),
          CustomContainer(
            color: Colors.white,
            borderRadius: 20.r,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.w),
            child: Row(
              children: [
                CustomText(
                  text: '$rating ',
                  fontSize: 17.sp,
                ),
                Icon(
                  Icons.star,
                  size: 17.sp,
                  color: Colors.amber,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
