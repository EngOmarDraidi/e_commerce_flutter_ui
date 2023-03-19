import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/app_routes.dart';
import '../auth/default_button.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.r),
    borderSide: const BorderSide(color: Color(0xFF757575)),
  );

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Form(
      child: Column(
        children: [
          SizedBox(height: height * 0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60.w,
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                    border: outlineInputBorder,
                    focusedBorder: outlineInputBorder,
                    enabledBorder: outlineInputBorder,
                  ),
                  onChanged: (value) {
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: 60.w,
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                    border: outlineInputBorder,
                    focusedBorder: outlineInputBorder,
                    enabledBorder: outlineInputBorder,
                  ),
                  onChanged: (value) => nextField(value, pin3FocusNode),
                ),
              ),
              SizedBox(
                width: 60.w,
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                    border: outlineInputBorder,
                    focusedBorder: outlineInputBorder,
                    enabledBorder: outlineInputBorder,
                  ),
                  onChanged: (value) => nextField(value, pin4FocusNode),
                ),
              ),
              SizedBox(
                width: 60.w,
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                    border: outlineInputBorder,
                    focusedBorder: outlineInputBorder,
                    enabledBorder: outlineInputBorder,
                  ),
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FocusNode!.unfocus();
                      // Then you need to check is the code is correct or not
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.15),
          DefaultButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.signinScreen);
            },
            text: "Continue",
          ),
        ],
      ),
    );
  }
}
