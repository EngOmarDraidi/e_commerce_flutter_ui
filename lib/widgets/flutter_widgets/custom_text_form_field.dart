import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final IconData? icon;
  final String? iconSvg;
  final TextEditingController textController;
  final String? Function(String?)? validator;
  final bool isNumber;
  final bool hideText;
  final void Function()? onTapIcon;

  const CustomTextFormField({
    required this.label,
    required this.hint,
    this.icon,
    this.iconSvg,
    required this.textController,
    required this.validator,
    required this.isNumber,
    this.hideText = false,
    this.onTapIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      validator: validator,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 25,
        ),
        hintText: hint,
        labelStyle: const TextStyle(
          color: AppColors.primaryColor,
        ),
        label: Text(label),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: AppColors.primaryColor),
          gapPadding: 10,
        ),
        suffixIcon: InkWell(
          onTap: onTapIcon,
          child: iconSvg != null
              ? Padding(
                  padding: EdgeInsets.fromLTRB(0, 20.w, 20.w, 20.w),
                  child: SvgPicture.asset(
                    iconSvg!,
                    height: 20.w,
                    color: AppColors.primaryColor,
                  ),
                )
              : Padding(
                  padding: EdgeInsets.fromLTRB(0, 20.w, 20.w, 20.w),
                  child: Icon(
                    icon,
                    color: AppColors.primaryColor,
                  ),
                ),
        ),
      ),
      obscureText: hideText,
    );
  }
}
