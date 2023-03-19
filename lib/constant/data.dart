import 'package:flutter/material.dart';
import 'app_assets.dart';

List<Map<String, dynamic>> categories = [
  {
    'name': 'Flash Deal',
    'icon': AppIcons.flashIcon,
  },
  {
    'name': 'Bill',
    'icon': AppIcons.billIcon,
  },
  {
    'name': 'Game',
    'icon': AppIcons.gameIcon,
  },
  {
    'name': 'Dialy Gift',
    'icon': AppIcons.giftIcon,
  },
  {
    'name': 'More',
    'icon': AppIcons.discoverIcon,
  },
];

List<Map<String, dynamic>> popularProducts = [
  {
    'name': 'Smart phones',
    'image': AppImages.phoneImage,
    'brands': '18 Brands',
  },
  {
    'name': 'Fashion',
    'image': AppImages.clothesImage,
    'brands': '24 Brands',
  }
];

List<Map<String, dynamic>> products = [
  {
    'id': 1,
    'images': [
      AppImages.ps5WhiteImage1,
      AppImages.ps5WhiteImage2,
      AppImages.ps5WhiteImage3,
      AppImages.ps5WhiteImage4,
    ],
    'color': Colors.white,
    'colors': [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    'title': "Wireless Controller for PS4™",
    'price': 64.99,
    'description': description,
    'rating': 4.8,
    'isFavourite': true,
    'isPopular': true,
  },
  {
    'id': 2,
    'images': [
      AppImages.shortImage,
    ],
    'color': const Color(0xFFDECB9C),
    'colors': [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    'title': "Nike Sport White - Man Pant",
    'price': 50.5,
    'description': description,
    'rating': 4.1,
    'isFavourite': false,
    'isPopular': true,
  },
  {
    'id': 3,
    'images': [
      AppImages.glapImage,
    ],
    'color': const Color(0xFF836DB8),
    'colors': [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    'title': "Gloves XC Omega - Polygon",
    'price': 36.55,
    'description': description,
    'rating': 4.1,
    'isFavourite': true,
    'isPopular': true,
  },
  {
    'id': 4,
    'images': [
      AppImages.headsetImage,
    ],
    'color': const Color(0xFFDECB9C),
    'colors': [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    'title': "Logitech Head",
    'price': 20.20,
    'description': description,
    'rating': 4.1,
    'isFavourite': false,
  },
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";

Map<String, dynamic> cartItems = {
  'items': [],
  'total': 0.0,
};
