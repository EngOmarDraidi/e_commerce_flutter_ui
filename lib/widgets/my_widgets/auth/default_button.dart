import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/app_colors.dart';

class DefaultButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  const DefaultButton({this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.h,
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: AppColors.primaryColor,
        ),
        onPressed: onPressed,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
