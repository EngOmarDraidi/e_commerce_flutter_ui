import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constant/app_colors.dart';
import '../../constant/app_assets.dart';
import 'custom_container.dart';
import 'custom_text.dart';

class CustomBottomNavigatorBar extends StatefulWidget {
  final PageController pageController;

  const CustomBottomNavigatorBar({required this.pageController, super.key});

  @override
  State<CustomBottomNavigatorBar> createState() =>
      _CustomBottomNavigatorBarState();
}

class _CustomBottomNavigatorBarState extends State<CustomBottomNavigatorBar> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.only(bottom: 15.h),
      height: 100.h,
      topLeft: 50.r,
      topRight: 50.r,
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 2), //(x,y)
          blurRadius: 3,
        ),
      ],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: bottomBarPages
            .map(
              (e) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = e['index'];
                    if (selected != 1 && selected != 2) {
                      widget.pageController.jumpToPage(selected);
                    }
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      e['icon'],
                      color: e['index'] == selected
                          ? AppColors.orangeColor100
                          : Colors.grey,
                      height: 20.sm,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    if (e['index'] == selected)
                      CustomText(
                        text: e['label'],
                        color: AppColors.orangeColor100,
                      ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

List<Map<String, dynamic>> bottomBarPages = [
  {
    'index': 0,
    'label': 'Home',
    'icon': AppIcons.homeIcon,
  },
  {
    'index': 1,
    'label': 'Favorite',
    'icon': AppIcons.favoriteIcon,
  },
  {
    'index': 2,
    'label': 'Chat',
    'icon': AppIcons.chatIcon,
  },
  {
    'index': 3,
    'label': 'Account',
    'icon': AppIcons.accountIcon,
  },
];
