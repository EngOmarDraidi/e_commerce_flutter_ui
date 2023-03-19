import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constant/data.dart';
import '../../../../models/category.dart';
import '../../../../constant/app_colors.dart';
import '../../../flutter_widgets/custom_container.dart';
import '../../../flutter_widgets/custom_text.dart';

List<Category> fromMapToModel() {
  return categories.map((e) => Category.fromMap(e)).toList();
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: fromMapToModel()
          .map(
            (e) => CategoryIcon(
              category: e,
            ),
          )
          .toList(),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final Category category;

  const CategoryIcon({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomContainer(
          height: 60.h,
          width: 60.w,
          margin: EdgeInsets.only(bottom: 5.h),
          padding: EdgeInsets.all(15.h),
          borderRadius: 10.r,
          color: AppColors.orangeColor,
          child: SvgPicture.asset(category.icon!),
        ),
        CustomContainer(
          width: 50.w,
          child: CustomText(
            text: category.name!,
            color: Colors.black54,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
