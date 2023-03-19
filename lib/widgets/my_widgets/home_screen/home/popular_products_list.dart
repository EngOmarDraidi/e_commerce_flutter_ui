import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constant/data.dart';
import '../../../flutter_widgets/custom_container.dart';
import '../../../flutter_widgets/custom_text.dart';

class PopularProductsList extends StatelessWidget {
  const PopularProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 115.h,
      margin: EdgeInsets.only(top: 20.h),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: popularProducts.length,
        itemBuilder: (context, index) =>
            CategoryCard(product: popularProducts[index]),
        separatorBuilder: (context, index) => SizedBox(
          width: 10.w,
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const CategoryCard({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomContainer(
          borderRadius: 20.r,
          height: 100.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.asset(
              product['image'],
            ),
          ),
        ),
        CustomContainer(
          borderRadius: 10.r,
          padding: EdgeInsets.all(5.h),
          margin: EdgeInsets.only(
            left: 15.w,
            top: 15.h,
          ),
          color: Colors.grey.withOpacity(0.2),
          child: CustomText(
            text: product['name'] + '\n' + product['brands'],
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15.sp,
          ),
        ),
      ],
    );
  }
}
