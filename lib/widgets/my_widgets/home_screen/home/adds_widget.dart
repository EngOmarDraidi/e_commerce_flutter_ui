import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constant/app_colors.dart';
import '../../../flutter_widgets/custom_container.dart';
import '../../../flutter_widgets/custom_text.dart';

class AddsWidget extends StatelessWidget {
  const AddsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: EdgeInsets.symmetric(vertical: 30.h),
      padding: EdgeInsets.only(left: 20.w),
      height: 100.h,
      width: double.infinity,
      color: AppColors.purpleColor,
      borderRadius: 20.r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: 'A Summer Surpise',
            color: Colors.white,
            fontSize: 12.sp,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
            text: 'Cashback 20%',
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
