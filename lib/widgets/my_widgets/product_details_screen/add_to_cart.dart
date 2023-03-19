import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/app_colors.dart';
import '../../../constant/data.dart';
import '../../../models/product.dart';
import '../../../models/cart_item.dart';
import '../../flutter_widgets/custom_container.dart';
import '../../flutter_widgets/custom_text.dart';
import '../../flutter_widgets/custom_button.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  final int getQuantity;

  const AddToCart(
      {required this.product, required this.getQuantity, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomContainer(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 30.h),
        topLeft: 50.r,
        topRight: 50.r,
        child: Column(
          children: [
            CustomButton(
              onPressed: () {
                int index = 0;

                bool isExist = cartItems['items'].any((element) {
                  index++;

                  return element.product!.title == product.title!;
                });

                if (isExist) {
                  cartItems['items'][index - 1].quantity =
                      cartItems['items'][index - 1].quantity + getQuantity;

                  cartItems['total'] += getQuantity * product.price!;

                  return;
                }

                CartItem newCartItem = CartItem.fromMap(
                  {'product': product, 'quantity': getQuantity},
                );

                cartItems['items'].add(newCartItem);
                cartItems['total'] = cartItems['total'] +
                    (newCartItem.quantity! * newCartItem.product!.price!);
              },
              buttonColor: AppColors.orangeColor100,
              minWidth: 220.w,
              height: 60.w,
              borderRadius: 20.r,
              child: CustomText(
                text: 'Add to Cart',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
