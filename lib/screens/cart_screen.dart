import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/app_assets.dart';
import '../constant/data.dart';
import '../widgets/flutter_widgets/custom_container.dart';
import '../widgets/flutter_widgets/custom_text.dart';
import '../widgets/flutter_widgets/custom_icon.dart';
import '../widgets/my_widgets/cart_screen/cart_screen_title.dart';
import '../widgets/my_widgets/cart_screen/list_items_cart.dart';
import '../widgets/my_widgets/cart_screen/cart_screen_bottom.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  rebuildScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: CartScreenTitle(
          items: cartItems['items'].length,
        ),
        leading: CustomContainer(
          margin: EdgeInsets.only(left: 30.w),
          child: CustomButtonIcon(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icons.arrow_back_ios,
            backgroundColor: Colors.white,
            color: Colors.grey.shade600,
            iconSize: 20.h,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (cartItems['items'].isEmpty)
            Expanded(
              child: Image.asset(
                AppImages.emptyCart,
              ),
            ),
          if (cartItems['items'].isNotEmpty)
            CustomContainer(
              margin: EdgeInsets.only(top: 40.h, left: 25.h),
              child: CustomText(
                text: 'Your Items',
                fontSize: 20.sp,
              ),
            ),
          if (cartItems['items'].isNotEmpty) ListItemsCart(fun: rebuildScreen),
          CartScreenBottom(
            total: cartItems['items'].isEmpty ? 0 : cartItems['total'],
          ),
        ],
      ),
    );
  }
}
