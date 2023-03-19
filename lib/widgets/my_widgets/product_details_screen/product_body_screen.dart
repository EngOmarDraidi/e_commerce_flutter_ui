import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/product.dart';
import '../../flutter_widgets/custom_container.dart';
import '../../my_widgets/product_details_screen/product_description.dart';
import '../../my_widgets/product_details_screen/product_information.dart';
import 'add_to_cart.dart';

class ProductBodyScreen extends StatefulWidget {
  final Product product;

  const ProductBodyScreen({
    required this.product,
    super.key,
  });

  @override
  State<ProductBodyScreen> createState() => _ProductBodyScreenState();
}

class _ProductBodyScreenState extends State<ProductBodyScreen> {
  int _quantity = 1;

  setQuantity(int n) {
    _quantity = n;
  }

  int get getQuantity => _quantity;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 650.h,
      color: Colors.white,
      border: const Border(
        top: BorderSide.none,
      ),
      borderRadius: 50.r,
      child: Column(
        children: [
          ProductDescription(
            product: widget.product,
          ),
          Expanded(
            child: CustomContainer(
              color: Colors.grey.shade100,
              border: const Border(
                top: BorderSide.none,
              ),
              borderRadius: 50.r,
              child: Column(
                children: [
                  ProductInformation(
                    productColors: widget.product.colors!,
                    color: widget.product.color!,
                    setQunatity: setQuantity,
                  ),
                  AddToCart(product: widget.product, getQuantity: getQuantity),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
