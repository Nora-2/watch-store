import 'package:flutter/material.dart';
import 'package:signin_signup/model/home_foryou_model.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.01),
          CustomSubTitle(
            size: size,
            subTitle: 'Recommended',
            isSeeAll: true,
          ),
          CustomProductsList(size: size, categoryProducts: HomeForYouModel.recommendedKidsProducts),
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
          CustomProductsList(size: size, categoryProducts: HomeForYouModel.favoritesKidsProducts),
          const SizedBox(height: 75),
        ],
      ),
    );
  }
}
