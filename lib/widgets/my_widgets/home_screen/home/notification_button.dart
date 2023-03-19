import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../flutter_widgets/custom_container.dart';
import '../../../flutter_widgets/custom_text.dart';
import '../../../flutter_widgets/custom_icon.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          child: CustomContainer(
            padding: EdgeInsets.only(left: 4.h),
            color: Colors.red,
            width: 15.h,
            height: 15.h,
            borderRadius: 100,
            child: CustomText(
              text: '0',
              color: Colors.white,
              fontSize: 11.sp,
            ),
          ),
        ),
        CustomButtonIcon(
          onPressed: () {},
          height: 55.h,
          width: 55.h,
          icon: Icons.notifications_outlined,
          color: Colors.grey,
        ),
      ],
    );
  }
}
