import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../flutter_widgets/custom_container.dart';
import '../../flutter_widgets/custom_text.dart';

class ProductQuantity extends StatefulWidget {
  final Function setQunatity;

  const ProductQuantity({required this.setQunatity, super.key});

  @override
  State<ProductQuantity> createState() => _ProductQuantityState();
}

class _ProductQuantityState extends State<ProductQuantity> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainer(
          onTap: () {
            if (quantity > 1) {
              setState(() {
                quantity--;
              });
            }
            widget.setQunatity(quantity);
          },
          color: Colors.white,
          borderRadius: 100.r,
          margin: EdgeInsets.only(
            right: 15.w,
          ),
          width: 40.h,
          height: 40.h,
          child: const Icon(Icons.remove),
        ),
        CustomText(
          text: '$quantity',
          fontSize: 25.sp,
        ),
        CustomContainer(
          onTap: () {
            setState(() {
              quantity++;
            });
            widget.setQunatity(quantity);
          },
          color: Colors.white,
          borderRadius: 100.r,
          margin: EdgeInsets.only(
            left: 15.w,
          ),
          width: 40.h,
          height: 40.h,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
