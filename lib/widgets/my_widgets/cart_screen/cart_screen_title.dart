import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../flutter_widgets/custom_text.dart';

class CartScreenTitle extends StatelessWidget {
  final int items;

  const CartScreenTitle({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 7.h,
        ),
        const CustomText(
          text: 'Your Cart',
          color: Colors.black,
        ),
        SizedBox(
          height: 7.h,
        ),
        CustomText(
          text: '$items Items',
          color: Colors.grey,
          fontSize: 12.sp,
        ),
      ],
    );
  }
}
