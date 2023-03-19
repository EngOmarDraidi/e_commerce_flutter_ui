import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/app_colors.dart';
import '../../../constant/data.dart';
import '../../../models/cart_item.dart';
import '../../flutter_widgets/custom_container.dart';
import '../../flutter_widgets/custom_text.dart';
import '../../flutter_widgets/custom_button.dart';

class ItemCart extends StatelessWidget {
  final CartItem cartItem;
  final Function fun;

  const ItemCart({required this.cartItem, required this.fun, super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: EdgeInsets.only(top: 20.w),
      child: Dismissible(
        key: UniqueKey(),
        background: CustomContainer(
          margin: EdgeInsets.symmetric(horizontal: 25.w),
          padding: EdgeInsets.only(right: 20.w),
          color: Colors.red.shade100,
          borderRadius: 20,
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.delete_forever_outlined,
            color: Colors.red,
            size: 30.w,
          ),
        ),
        direction: DismissDirection.endToStart,
        confirmDismiss: (direction) async {
          bool confirm = await confirmDelete(context);
          if (confirm) {
            deleteItem(cartItem, fun);
            fun();
            return confirm;
          }
          return confirm;
        },
        child: Row(
          children: [
            CustomContainer(
              margin: EdgeInsets.only(
                left: 25.w,
                right: 20.w,
              ),
              height: 130.w,
              width: 110.w,
              padding: EdgeInsets.all(20.w),
              color: AppColors.greyColor,
              borderRadius: 20.r,
              child: Image.asset(
                cartItem.product!.images![0],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainer(
                  width: 160.w,
                  child: CustomText(
                    text: cartItem.product!.title!,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade700,
                  ),
                ),
                CustomContainer(
                  margin: EdgeInsets.only(top: 20.w),
                  child: Row(
                    children: [
                      CustomText(
                        text: '\$${cartItem.product!.price!}  ',
                        color: AppColors.orangeColor100,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        text: 'x${cartItem.quantity}',
                        color: Colors.grey.shade700,
                        fontSize: 15.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

deleteItem(CartItem item, Function fun) {
  cartItems['total'] -= item.quantity! * item.product!.price!;
  cartItems['items'].remove(item);
  fun();
}

confirmDelete(BuildContext context) async {
  return await showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Confirm"),
      content: const Text("Are you sure you wish to delete this item?"),
      actions: <Widget>[
        CustomButton(
          onPressed: () => Navigator.of(context).pop(true),
          buttonColor: AppColors.orangeColor100,
          child: const CustomText(
            text: "DELETE",
            color: Colors.white,
          ),
        ),
        CustomButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const CustomText(text: "CANCEL"),
        ),
      ],
    ),
  );
}
