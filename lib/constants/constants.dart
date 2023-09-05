
import 'package:flutter/material.dart';

const imagePath = 'assets/images';

class Constants{

  static const Gradient categoryGradientColor = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Colors.white,
      Colors.transparent,
    ],
  );

  static const List<String> categoriesImg = [
    '$imagePath/category_01.jpg',
    '$imagePath/category_02.jpg',
    '$imagePath/category_03.jpg',
    '$imagePath/category_04.jpg',
    '$imagePath/category_05.jpg',
  ];

  static const List<String> categoriesName = [
    'Classic',
    'Men',
    'Women',
    'Smart',
    'Kids',
  ];
}