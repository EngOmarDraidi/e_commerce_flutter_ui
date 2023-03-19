import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/flutter_widgets/custom_text.dart';
import '../../widgets/my_widgets/home_screen/account/account_image.dart';
import '../../widgets/my_widgets/home_screen/account/all_settings.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const CustomText(
          text: 'Profile',
          color: Colors.black54,
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
              size: 20.h,
            ),
          ),
        ),
      ),
      body: ListView(
        children: const [
          AccountImage(),
          AllSettings(),
        ],
      ),
    );
  }
}
