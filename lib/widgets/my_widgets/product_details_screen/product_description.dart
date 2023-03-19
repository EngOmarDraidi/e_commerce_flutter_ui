import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/product.dart';
import '../../../constant/app_colors.dart';
import '../../flutter_widgets/custom_container.dart';
import '../../flutter_widgets/custom_text.dart';
import '../../flutter_widgets/custom_icon.dart';

class ProductDescription extends StatefulWidget {
  final Product product;

  const ProductDescription({required this.product, super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomContainer(
          margin: EdgeInsets.only(left: 30.w, top: 20.w, bottom: 10.w),
          child: CustomText(
            text: widget.product.title!,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomContainer(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 15.w,
              ),
              border: const Border(
                left: BorderSide.none,
              ),
              color: Colors.red.shade100,
              topLeft: 20.r,
              bottomLeft: 20.r,
              child: CustomButtonIcon(
                onPressed: () {
                  setState(() {
                    widget.product.isFavourite = !widget.product.isFavourite!;
                  });
                },
                icon: Icons.favorite,
                color: widget.product.isFavourite! ? Colors.red : Colors.grey,
              ),
            ),
          ],
        ),
        CustomContainer(
          margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.w),
          child: CustomText(
            text: widget.product.description!,
            fontSize: 17.sp,
            color: Colors.grey.shade700,
          ),
        ),
        CustomContainer(
          onTap: null,
          margin: EdgeInsets.only(
            left: 30.w,
            bottom: 20.w,
            top: 10.w,
          ),
          child: CustomText(
            text: 'See More Detail',
            color: AppColors.orangeColor100,
            fontSize: 17.sp,
          ),
        ),
      ],
    );
  }
}
