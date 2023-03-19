import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constant/app_colors.dart';
import '../../constant/app_assets.dart';
import '../../constant/app_routes.dart';
import '../../widgets/flutter_widgets/custom_text.dart';
import '../../widgets/my_widgets/auth/signup_screen/signup_form.dart';
import '../../widgets/my_widgets/auth/social_icon.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigatorState navigatorState = Navigator.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(text: 'Sign Up'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 35.h),
          CustomText(
            text: 'Register Account',
            color: Colors.black,
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h),
          const CustomText(
            text: "Complete your details or continue\nwith social media",
            color: Colors.black54,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          const SignupForm(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                icon: AppIcons.googleIcon,
                onTap: () {},
              ),
              SocialIcon(
                icon: AppIcons.facebookIcon,
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'Do you have an account? ',
                fontSize: 16.sp,
              ),
              GestureDetector(
                onTap: () {
                  navigatorState.pushReplacementNamed(AppRoutes.signinScreen);
                },
                child: CustomText(
                  text: 'Sign In',
                  fontSize: 16.sp,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
