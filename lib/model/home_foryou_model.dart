import 'package:flutter/material.dart';
import 'package:signin_signup/model/most_wanted_watch_Item.dart';
class HomeForYouModel {

  static const imagePath = 'assets/images';

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

  static const List<WatchItem> classicProducts = [
    WatchItem(
      image: '$imagePath/classic_01.png',
      watchName: 'Classic analog watch...',
      watchDescription: 'Analog wrist watch for men\nWith a metallic and gold-tone\nstainless steel hands',
      price: '5640.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/classic_02.png',
      watchName: 'Classic analog watch...',
      watchDescription: 'Analog wrist watch for men\nWith a metallic and gold-tone\nstainless steel hands',
      price: '5640.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/classic_01.png',
      watchName: 'Classic analog watch...',
      watchDescription: 'Analog wrist watch for men\nWith a metallic and gold-tone\nstainless steel hands',
      price: '5640.99 L.E',
    ),
  ];

  static const List<WatchItem> recommendedMenProducts = [
    WatchItem(
      image: '$imagePath/men_01.png',
      watchName: 'Men\'s analog watch...',
      watchDescription: 'Hand watch for men, analog,\nwith a brownish color, leather',
      price: '4540.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/men_02.png',
      watchName: 'Men\'s analog watch...',
      watchDescription: 'Hand watch for men, analog,\nwith a brownish color, leather',
      price: '4540.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/men_01.png',
      watchName: 'Men\'s analog watch...',
      watchDescription: 'Hand watch for men, analog,\nwith a brownish color, leather',
      price: '4540.99 L.E',
    ),
  ];
  static const List<WatchItem> favoritesMenProducts = [
    WatchItem(
      image: '$imagePath/men_03.png',
      watchName: 'Men\'s analog watch...',
      watchDescription: 'Hand watch for men, analog,\nwith a brownish color, leather',
      price: '4540.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/men_04.png',
      watchName: 'Men\'s analog watch...',
      watchDescription: 'Hand watch for men, analog,\nwith a brownish color, leather',
      price: '4540.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/men_03.png',
      watchName: 'Men\'s analog watch...',
      watchDescription: 'Hand watch for men, analog,\nwith a brownish color, leather',
      price: '4540.99 L.E',
    ),
  ];

  static const List<WatchItem> womenProducts = [
    WatchItem(
      image: '$imagePath/women_01.png',
      watchName: 'Women\'s analog...',
      watchDescription: 'Analog wrist watch for women\nWith silver and gray leather hands',
      price: '7640.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/women_02.png',
      watchName: 'Women\'s analog...',
      watchDescription: 'Analog wrist watch for women\nWith silver and gray leather hands',
      price: '7640.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/women_03.png',
      watchName: 'Women\'s analog...',
      watchDescription: 'Analog wrist watch for women\nWith silver and gray leather hands',
      price: '7640.99 L.E',
    ),
  ];

  static const List<WatchItem> recommendedSmartProducts = [
    WatchItem(
      image: '$imagePath/smart_01.png',
      watchName: 'Smart watch for. . .',
      watchDescription: 'Black smart watch',
      price: '2075.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/smart_02.png',
      watchName: 'Smart watch for. . .',
      watchDescription: 'Black smart watch',
      price: '2075.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/smart_03.png',
      watchName: 'Smart watch for. . .',
      watchDescription: 'Black smart watch',
      price: '2075.99 L.E',
    ),
  ];
  static const List<WatchItem> favoritesSmartProducts = [
    WatchItem(
      image: '$imagePath/smart_04.png',
      watchName: 'Smart watch for. . .',
      watchDescription: 'Black smart watch',
      price: '2075.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/smart_05.png',
      watchName: 'Smart watch for. . .',
      watchDescription: 'Black smart watch',
      price: '2075.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/smart_06.png',
      watchName: 'Smart watch for. . .',
      watchDescription: 'Black smart watch',
      price: '2075.99 L.E',
    ),
  ];

  static const List<WatchItem> recommendedKidsProducts = [
    WatchItem(
      image: '$imagePath/kids_01.png',
      watchName: 'Children\'s watch...',
      watchDescription: 'A wrist watch for children\nin the form of a cartoon with anal...',
      price: '640.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/kids_02.png',
      watchName: 'Children\'s watch...',
      watchDescription: 'A wrist watch for children\nin the form of a cartoon with anal...',
      price: '640.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/kids_01.png',
      watchName: 'Children\'s watch...',
      watchDescription: 'A wrist watch for children\nin the form of a cartoon with anal...',
      price: '640.99 L.E',
    ),
  ];
  static const List<WatchItem> favoritesKidsProducts = [
    WatchItem(
      image: '$imagePath/kids_03.png',
      watchName: 'Children\'s watch...',
      watchDescription: 'A wrist watch for children\nin the form of a cartoon with anal...',
      price: '640.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/kids_04.png',
      watchName: 'Children\'s watch...',
      watchDescription: 'A wrist watch for children\nin the form of a cartoon with anal...',
      price: '640.99 L.E',
    ),
    WatchItem(
      image: '$imagePath/kids_03.png',
      watchName: 'Children\'s watch...',
      watchDescription: 'A wrist watch for children\nin the form of a cartoon with anal...',
      price: '640.99 L.E',
    ),
  ];

}