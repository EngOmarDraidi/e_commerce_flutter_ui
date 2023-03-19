import 'package:flutter/material.dart';
import '../../../constant/data.dart';
import 'item_cart.dart';

class ListItemsCart extends StatelessWidget {
  final Function fun;
  const ListItemsCart({required this.fun, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: cartItems['items'].length,
        itemBuilder: (context, index) => ItemCart(
          cartItem: cartItems['items'][index],
          fun: fun,
        ),
      ),
    );
  }
}
