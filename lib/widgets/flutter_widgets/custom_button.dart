import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onPressed;
  final Color? buttonColor;
  final double? minWidth;
  final double? height;
  final double? borderRadius;
  const CustomButton({
    this.child,
    this.onPressed,
    this.buttonColor,
    this.minWidth,
    this.height,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: minWidth,
      height: height,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius == null
            ? BorderRadius.zero
            : BorderRadius.circular(borderRadius!),
      ),
      child: child,
    );
  }
}
