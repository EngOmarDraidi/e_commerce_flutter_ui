import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../../../../models/product.dart';
import '../../../../constant/app_routes.dart';
import '../../../../constant/app_colors.dart';
import '../../../flutter_widgets/custom_container.dart';
import '../../../flutter_widgets/custom_text.dart';
import '../../../flutter_widgets/custom_icon.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        AppRoutes.productDetailsScreen,
        arguments: product,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              CustomContainer(
                height: 160.h,
                width: 160.w,
                padding: EdgeInsets.all(20.h),
                color: AppColors.greyColor,
                borderRadius: 20.r,
                child: Image.asset(
                  product.images![0],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomContainer(
                width: 150.w,
                child: CustomText(
                  text: product.title!,
                  fontSize: 15.sp,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          CustomContainer(
            width: 150.w,
            margin: EdgeInsets.only(
              bottom: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomText(
                  text: '\$${product.price}',
                  color: AppColors.orangeColor100,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
                FavoriteIcon(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteIcon extends StatefulWidget {
  final Product product;

  const FavoriteIcon({required this.product, super.key});

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  @override
  Widget build(BuildContext context) {
    return CustomButtonIcon(
      onPressed: () {
        widget.product.isFavourite = !widget.product.isFavourite!;
        setState(() {});
      },
      height: 30.h,
      width: 30.w,
      icon: Icons.favorite,
      color: widget.product.isFavourite! ? Colors.red : Colors.grey.shade400,
      iconSize: 25.w,
      backgroundColor: Colors.white,
    );
  }
}
