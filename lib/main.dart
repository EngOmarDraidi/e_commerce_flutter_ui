import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constant/app_theme.dart';
import 'constant/app_routes.dart';
import 'screens/main/main_screen.dart';
import 'screens/product_details_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/auth/signup_screen.dart';
import 'screens/auth/signin_screen.dart';
import 'screens/on_boarding/on_boarding_screen.dart';
import 'screens/otp/otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (context, child) => MaterialApp(
        title: 'E-Commerce Flutter UI',
        theme: theme(),
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.onBoardingScreen,
        routes: {
          AppRoutes.mainScreen: (context) => const MainScreen(),
          AppRoutes.signupScreen: (context) => const SignupScreen(),
          AppRoutes.signinScreen: (context) => const SigninScreen(),
          AppRoutes.productDetailsScreen: (context) =>
              const ProductDetailsScreen(),
          AppRoutes.cartScreen: (context) => const CartScreen(),
          AppRoutes.onBoardingScreen: (context) => const OnBoardingScreen(),
          AppRoutes.otpScreen: (context) => const OtpScreen(),
        },
      ),
    );
  }
}
