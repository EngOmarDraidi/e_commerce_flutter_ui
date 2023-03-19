import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/app_colors.dart';
import '../../flutter_widgets/custom_container.dart';

class ColorsList extends StatefulWidget {
  final Color color;
  final List<Color> productColors;

  const ColorsList({
    required this.productColors,
    required this.color,
    super.key,
  });

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  Color? colorSelected;
  List<Color>? colors;

  @override
  void initState() {
    super.initState();
    colors = widget.productColors;
    colorSelected = widget.color;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: colors!
          .map(
            (e) => CustomContainer(
              onTap: () => setState(() {
                colorSelected = e;
              }),
              borderRadius: 100.r,
              width: 50.h,
              height: 50.h,
              border: Border.all(
                color: colorSelected == e
                    ? AppColors.orangeColor100
                    : Colors.grey.shade100,
                width: 1.5,
              ),
              margin: EdgeInsets.only(right: 2.w),
              padding: EdgeInsets.all(8.h),
              child: CircleAvatar(
                backgroundColor: e,
              ),
            ),
          )
          .toList(),
    );
  }
}
