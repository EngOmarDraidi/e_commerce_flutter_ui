import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../widgets/my_widgets/product_details_screen/header_screen.dart';
import '../widgets/my_widgets/product_details_screen/product_images.dart';
import '../widgets/my_widgets/product_details_screen/product_body_screen.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HeaderScreen(
            rating: product.rating!,
          ),
          ProductImages(
            productImages: product.images!,
          ),
          ProductBodyScreen(
            product: product,
          ),
        ],
      ),
    );
  }
}
