
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/app_colors.dart';

class SlideContent extends StatelessWidget {
  const SlideContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: 265.h,
          width: 235.w,
        ),
      ],
    );
  }
}
