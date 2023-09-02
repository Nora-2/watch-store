import 'package:flutter/material.dart';
import 'package:signin_signup/constants/constants.dart';
import 'package:signin_signup/model/watch_Item_model.dart';
import 'package:signin_signup/wedgites/custom_categories_list.dart';
import 'package:signin_signup/wedgites/custom_products_list.dart';
import 'package:signin_signup/wedgites/custom_sub_title.dart';

class KidsView extends StatelessWidget {
  const KidsView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    const List<WatchItem> recommendedKidsProducts = [
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
    const List<WatchItem> favoritesKidsProducts = [
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
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.01),
          CustomSubTitle(
            size: size,
            subTitle: 'Recommended',
            isSeeAll: true,
          ),
          CustomProductsList(size: size, categoryProducts: recommendedKidsProducts),
          SizedBox(height: size.height * 0.02),
          CustomSubTitle(
            size: size,
            subTitle: 'Categories',
            isSeeAll: false,
          ),
          CustomCategoryList(size: size,),
          CustomSubTitle(
            size: size,
            subTitle: 'Favorite',
            isSeeAll: true,
          ),
          CustomProductsList(size: size, categoryProducts: favoritesKidsProducts),
          const SizedBox(height: 75),
        ],
      ),
    );
  }
}
