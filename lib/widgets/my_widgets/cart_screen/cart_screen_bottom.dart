import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/app_colors.dart';
import '../../flutter_widgets/custom_container.dart';
import '../../flutter_widgets/custom_text.dart';
import '../../flutter_widgets/custom_button.dart';

class CartScreenBottom extends StatelessWidget {
  final double total;

  const CartScreenBottom({required this.total, super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: CustomContainer(
        padding: EdgeInsets.only(
          left: 25.w,
          right: 25.w,
          bottom: 50.h,
          top: 15.h,
        ),
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.2.w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainer(
                  color: AppColors.greyColor.withOpacity(0.13),
                  borderRadius: 10.r,
                  padding: EdgeInsets.all(10.h),
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: const Icon(
                    Icons.save,
                    color: AppColors.orangeColor100,
                  ),
                ),
                CustomContainer(
                  margin: EdgeInsets.only(bottom: 8.h),
                  child: CustomText(
                    text: 'Total:',
                    color: Colors.grey.shade600,
                  ),
                ),
                CustomText(
                  text: '\$${total.toStringAsFixed(2)}',
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      CustomText(
                        text: 'Add voucher code',
                        color: Colors.grey.shade600,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15.sp,
                        color: Colors.grey.shade600,
                      )
                    ],
                  ),
                ),
                CustomButton(
                  onPressed: () {},
                  buttonColor: AppColors.orangeColor100,
                  minWidth: 220.h,
                  height: 55.h,
                  borderRadius: 20.r,
                  child: CustomText(
                    text: 'Check Out',
                    color: Colors.white,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
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
