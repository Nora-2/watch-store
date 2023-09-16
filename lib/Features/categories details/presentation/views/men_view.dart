import 'package:flutter/material.dart';
import 'package:signin_signup/Features/home/data/models/watch_Item_model.dart';
import 'package:signin_signup/constants/constants.dart';
import 'package:signin_signup/core/widgets/custom_categories_list.dart';
import 'package:signin_signup/core/widgets/custom_products_list.dart';
import 'package:signin_signup/core/widgets/custom_sub_title.dart';


class MenView extends StatelessWidget {
  const MenView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    List<WatchItem> recommendedMenProducts = [
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
    List<WatchItem> favoritesMenProducts = [
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

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.01),
          CustomSubTitle(
            size: size,
            subTitle: 'Recommended',
            isSeeAll: true,
          ),
          CustomProductsList(size: size, categoryProducts: recommendedMenProducts),
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
          CustomProductsList(size: size, categoryProducts: favoritesMenProducts),
          const SizedBox(height: 75),
        ],
      ),
    );
  }
}
