import 'product.dart';

class CartItem {
  Product? product;
  int? quantity;

  CartItem.fromMap(Map<String, dynamic> map) {
    product = map['product'];
    quantity = map['quantity'];
  }

  Map<String, dynamic> toMap() {
    return {
      'product': product,
      'quantity': quantity,
    };
  }
}
