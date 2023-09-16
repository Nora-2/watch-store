import 'package:flutter/material.dart';
import 'package:signin_signup/Features/home/data/models/watch_Item_model.dart';
import 'package:signin_signup/constants/constants.dart';
import 'package:signin_signup/core/widgets/custom_categories_list.dart';
import 'package:signin_signup/core/widgets/custom_products_list.dart';
import 'package:signin_signup/core/widgets/custom_sub_title.dart';

class WomenView extends StatelessWidget {
  const WomenView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    List<WatchItem> womenProducts = [
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

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.01),
          CustomSubTitle(
            size: size,
            subTitle: 'Recommended',
            isSeeAll: true,
          ),
          CustomProductsList(size: size, categoryProducts: womenProducts),
          SizedBox(height: size.height * 0.01),
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
          CustomProductsList(size: size, categoryProducts: womenProducts),
          const SizedBox(height: 75),
        ],
      ),
    );
  }
}
