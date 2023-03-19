import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constant/app_routes.dart';
import '../../../../constant/app_colors.dart';
import '../../../flutter_widgets/custom_container.dart';
import '../../../flutter_widgets/custom_text.dart';

class SettingsWidget extends StatelessWidget {
  final String title;
  final String icon;

  const SettingsWidget({required this.title, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      onTap: title == 'Log Out'
          ? () => Navigator.of(context).pushNamed(AppRoutes.signinScreen)
          : null,
      padding: EdgeInsets.all(10.h),
      margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
      borderRadius: 20.r,
      color: const Color.fromRGBO(242, 242, 247, 0.7),
      child: ListTile(
        leading: SvgPicture.asset(
          icon,
          color: AppColors.orangeColor100,
          width: 20.w,
          height: 20.w,
        ),
        title: CustomText(
          text: title,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black45,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 20.h,
        ),
      ),
    );
  }
}
