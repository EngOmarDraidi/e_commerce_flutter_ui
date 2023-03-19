import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/app_colors.dart';
import '../../flutter_widgets/custom_container.dart';

class ProductImages extends StatefulWidget {
  final List<String> productImages;

  const ProductImages({required this.productImages, super.key});

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  List<String>? images;

  int index = 0;
  String? imageSelected;

  @override
  void initState() {
    super.initState();
    images = widget.productImages;
    imageSelected = images![0];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
          margin: EdgeInsets.only(bottom: 20.h),
          height: 200.w,
          width: 270.w,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              imageSelected!,
            ),
          ),
        ),
        CustomContainer(
          margin: EdgeInsets.only(bottom: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images!
                .map((e) => CustomContainer(
                      onTap: () => setState(() {
                        imageSelected = e;
                      }),
                      color: Colors.white,
                      padding: EdgeInsets.all(5.h),
                      margin: EdgeInsets.symmetric(horizontal: 5.h),
                      border: Border.all(
                        color: imageSelected == e
                            ? AppColors.orangeColor100
                            : Colors.grey.shade200,
                      ),
                      borderRadius: 10.r,
                      height: 50.w,
                      width: 50.w,
                      child: Image.asset(
                        e,
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
