import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/app_routes.dart';
import '../../../constant/app_colors.dart';
import '../auth/default_button.dart';
import 'slide_content.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController pageController = PageController();

  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "TOKOTO",
              style: TextStyle(
                fontSize: 36.sp,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SlideContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(flex: 3),
                    DefaultButton(
                      onPressed: () {
                        if (currentPage == 2) {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.signinScreen);
                        }
                        currentPage++;
                        pageController.animateToPage(currentPage,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear);
                        setState(() {});
                      },
                      text: 'Continue',
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5.w),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? AppColors.primaryColor
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
