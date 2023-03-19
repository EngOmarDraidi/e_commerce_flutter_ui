import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/my_widgets/home_screen/home/products_list.dart';
import '../../widgets/my_widgets/home_screen/home/adds_widget.dart';
import '../../widgets/my_widgets/home_screen/home/home_screen_bar.dart';
import '../../widgets/my_widgets/home_screen/home/categories_list.dart';
import '../../widgets/my_widgets/home_screen/home/section_title.dart';
import '../../widgets/my_widgets/home_screen/home/popular_products_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        top: 20.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            HomeScreenBar(),
            AddsWidget(),
            CategoriesList(),
            SectionTitle(title: 'Special for you'),
            PopularProductsList(),
            SectionTitle(title: 'Popular Product'),
            ProductsList(),
          ],
        ),
      ),
    );
  }
}
