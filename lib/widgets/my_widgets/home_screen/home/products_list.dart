import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constant/data.dart';
import '../../../../models/product.dart';
import '../../../flutter_widgets/custom_container.dart';
import 'product_card.dart';

List<Product> fromDataToModels() {
  return products.map((e) => Product.fromMap(e)).toList();
}

class ProductsList extends StatefulWidget {
  const ProductsList({super.key});

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  List<Product> listOfProducts = [];

  @override
  void initState() {
    super.initState();
    listOfProducts = fromDataToModels();
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 300.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            ProductCard(product: listOfProducts[index]),
        separatorBuilder: (context, index) => CustomContainer(
          width: 10.w,
        ),
        itemCount: listOfProducts.length,
      ),
    );
  }
}
