import 'package:flutter/material.dart';
import 'package:signin_signup/constants/constants.dart';
import 'package:signin_signup/model/watch_Item_model.dart';
import 'package:signin_signup/wedgites/custom_categories_list.dart';
import 'package:signin_signup/wedgites/custom_products_list.dart';
import 'package:signin_signup/wedgites/custom_sub_title.dart';

class SmartView extends StatelessWidget {
  const SmartView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    List<WatchItem> recommendedSmartProducts = [
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
    List<WatchItem> favoritesSmartProducts = [
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

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.01),
          CustomSubTitle(
            size: size,
            subTitle: 'Recommended',
            isSeeAll: true,
          ),
          CustomProductsList(size: size, categoryProducts: recommendedSmartProducts),
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
          CustomProductsList(size: size, categoryProducts: favoritesSmartProducts),
          const SizedBox(height: 75),
        ],
      ),
    );
  }
}
