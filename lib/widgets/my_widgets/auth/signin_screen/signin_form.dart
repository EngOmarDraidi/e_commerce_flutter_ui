import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constant/app_colors.dart';
import '../../../../constant/app_assets.dart';
import '../../../../constant/app_routes.dart';
import '../../../flutter_widgets/custom_text.dart';
import '../../../flutter_widgets/custom_text_form_field.dart';
import '../../../my_widgets/auth/default_button.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigatorState navigatorState = Navigator.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        children: [
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
          SizedBox(height: 20.h),
          Row(
            children: [
              const MyCheckBox(),
              const CustomText(text: "Remember me"),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: const CustomText(
                  text: "Forgot Password",
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          SizedBox(height: 20.h),
          DefaultButton(
            text: 'Sign In',
            onPressed: () {
              navigatorState.pushReplacementNamed(AppRoutes.mainScreen);
            },
          ),
        ],
      ),
    );
  }
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: check,
      activeColor: AppColors.primaryColor,
      onChanged: (value) {
        setState(() {
          check = value!;
        });
      },
    );
  }
}
