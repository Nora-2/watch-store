import 'package:flutter/material.dart';
import 'package:signin_signup/Features/home/data/models/watch_Item_model.dart';
import 'package:signin_signup/constants/constants.dart';
import 'package:signin_signup/core/widgets/custom_categories_list.dart';
import 'package:signin_signup/core/widgets/custom_products_list.dart';
import 'package:signin_signup/core/widgets/custom_sub_title.dart';

class ClassicView extends StatelessWidget {
  const ClassicView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    List<WatchItem> classicProducts = [
      WatchItem(
        image: '$imagePath/classic_01.png',
        watchName: 'Classic analog watch...',
        watchDescription: 'Analog wrist watch for men\nWith a metallic and gold-tone',
        price: '5640.99 L.E',
      ),
      WatchItem(
        image: '$imagePath/classic_02.png',
        watchName: 'Classic analog watch...',
        watchDescription: 'Analog wrist watch for men\nWith a metallic and gold-tone',
        price: '5640.99 L.E',
      ),
      WatchItem(
        image: '$imagePath/classic_01.png',
        watchName: 'Classic analog watch...',
        watchDescription: 'Analog wrist watch for men\nWith a metallic and gold-tone',
        price: '5640.99 L.E',
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
          CustomProductsList(size: size, categoryProducts: classicProducts),
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
          CustomProductsList(size: size, categoryProducts: classicProducts),
          const SizedBox(height: 75),
        ],
      ),
    );
  }
}
