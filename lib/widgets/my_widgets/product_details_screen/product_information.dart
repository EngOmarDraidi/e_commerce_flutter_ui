import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../flutter_widgets/custom_container.dart';
import '../../my_widgets/product_details_screen/colors_list.dart';
import '../../my_widgets/product_details_screen/product_quantity.dart';

class ProductInformation extends StatelessWidget {
  final Color color;
  final List<Color> productColors;

  final Function setQunatity;

  const ProductInformation(
      {required this.productColors,
      required this.color,
      required this.setQunatity,
      super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 30.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ColorsList(
            productColors: productColors,
            color: color,
          ),
          ProductQuantity(
            setQunatity: setQunatity,
          ),
        ],
      ),
    );
  }
}
