import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constant/app_routes.dart';
import '../../../../constant/app_assets.dart';
import '../../../flutter_widgets/custom_text_form_field.dart';
import '../../../my_widgets/auth/default_button.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        children: [
          CustomTextFormField(
            label: 'Username',
            hint: 'Enter your name',
            iconSvg: AppIcons.userIcon,
            textController: TextEditingController(),
            validator: (value) {
              return null;
            },
            isNumber: false,
          ),
          SizedBox(height: 30.h),
          CustomTextFormField(
            label: 'Phone Number',
            hint: 'Enter your phone number',
            iconSvg: AppIcons.phoneIcon,
            textController: TextEditingController(),
            validator: (value) {
              return null;
            },
            isNumber: false,
          ),
          SizedBox(height: 30.h),
          CustomTextFormField(
            label: 'Email Address',
            hint: 'Enter your email',
            iconSvg: AppIcons.mailIcon,
            textController: TextEditingController(),
            validator: (value) {
              return null;
            },
            isNumber: false,
          ),
          SizedBox(height: 30.h),
          CustomTextFormField(
            label: 'Password',
            hint: '********',
            hideText: true,
            iconSvg: AppIcons.lockIcon,
            textController: TextEditingController(),
            validator: (value) {
              return null;
            },
            isNumber: false,
          ),
          SizedBox(height: 35.h),
          DefaultButton(
            text: 'Sign Up',
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.otpScreen);
            },
          ),
        ],
      ),
    );
  }
}
