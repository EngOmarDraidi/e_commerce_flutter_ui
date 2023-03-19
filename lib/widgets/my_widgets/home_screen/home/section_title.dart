import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../flutter_widgets/custom_container.dart';
import '../../../flutter_widgets/custom_text.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: EdgeInsets.only(
        top: 20.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: title,
            fontSize: 20.sp,
          ),
          TextButton(
            onPressed: () {},
            child: const CustomText(
              text: 'See more',
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
