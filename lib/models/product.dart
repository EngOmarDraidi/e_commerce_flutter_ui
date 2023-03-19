import 'package:flutter/material.dart';

class Product {
  int? id;
  String? title, description;
  List<String>? images;
  Color? color;
  List<Color>? colors;
  double? rating, price;
  bool? isFavourite, isPopular;

  Product.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['title'];
    description = map['description'];
    images = map['images'];
    color = map['color'];
    colors = map['colors'];
    rating = map['rating'];
    price = map['price'];
    isFavourite = map['isFavourite'];
    isPopular = map['isPopular'];
  }

  toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'color': color,
      'colors': colors,
      'rating': rating,
      'price': price,
      'isFavourite': isFavourite,
      'isPopular': isPopular,
    };
  }
}
