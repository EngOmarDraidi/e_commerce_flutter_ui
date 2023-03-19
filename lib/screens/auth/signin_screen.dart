import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constant/app_colors.dart';
import '../../constant/app_assets.dart';
import '../../constant/app_routes.dart';
import '../../widgets/flutter_widgets/custom_text.dart';
import '../../widgets/my_widgets/auth/signin_screen/signin_form.dart';
import '../../widgets/my_widgets/auth/social_icon.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigatorState navigatorState = Navigator.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(text: 'Sign In'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 40.h),
          CustomText(
            text: 'Welcome Back',
            color: Colors.black,
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h),
          const CustomText(
            text:
                "Sign in with your email and password  \nor continue with social media",
            color: Colors.black54,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          const SigninForm(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
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
                text: 'Don’t have an account? ',
                fontSize: 16.sp,
              ),
              GestureDetector(
                onTap: () {
                  navigatorState.pushReplacementNamed(AppRoutes.signupScreen);
                },
                child: CustomText(
                  text: 'Sign Up',
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
