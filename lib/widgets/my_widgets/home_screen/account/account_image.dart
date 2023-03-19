import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constant/app_assets.dart';
import '../../../flutter_widgets/custom_container.dart';

class AccountImage extends StatelessWidget {
  const AccountImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomContainer(
        margin: EdgeInsets.symmetric(vertical: 40.h),
        child: Stack(
          children: [
            CustomContainer(
              height: 120.h,
              child: Image.asset(AppImages.profileImage),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: CustomContainer(
                color: const Color.fromRGBO(242, 242, 247, 1),
                borderRadius: 100,
                padding: EdgeInsets.all(8.h),
                child: Icon(
                  Icons.camera_enhance_outlined,
                  size: 25.w,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
