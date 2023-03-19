import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constant/app_routes.dart';
import '../../../../constant/app_colors.dart';
import '../../../flutter_widgets/custom_container.dart';
import '../../../flutter_widgets/custom_icon.dart';
import 'notification_button.dart';

class HomeScreenBar extends StatelessWidget {
  const HomeScreenBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigatorState navigatorState = Navigator.of(context);

    return Row(
      children: [
        Expanded(
          child: CustomContainer(
            height: 55.h,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search product',
                filled: true,
                fillColor: AppColors.greyColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.orangeColor100,
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                focusColor: AppColors.orangeColor100,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        CustomButtonIcon(
          height: 55.h,
          width: 55.h,
          onPressed: () {
            navigatorState.pushNamed(AppRoutes.cartScreen);
          },
          icon: Icons.shopping_cart_outlined,
          color: Colors.grey,
        ),
        SizedBox(
          width: 10.h,
        ),
        const NotificationButton(),
      ],
    );
  }
}
