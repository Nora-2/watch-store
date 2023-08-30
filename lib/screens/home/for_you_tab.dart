import 'package:flutter/material.dart';
import 'package:signin_signup/wedgites/custom_categories_list.dart';
import 'package:signin_signup/wedgites/custom_sub_title.dart';

class ForYouTab extends StatelessWidget {
  const ForYouTab({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomSubTitle(
            size: size,
            subTitle: 'Recommended',
            isSeeAll: true,
          ),
          // const CustomProductCard(
          //     imagePath: 'assets/images/category_01.jpg',
          //     productName: 'productName',
          //     productDescription: 'dfgmd gdhfsd dfdhd',
          //     price:245,
          // ),
          CustomSubTitle(
            size: size,
            subTitle: 'Categories',
            isSeeAll: false,
          ),
          const CustomCategoryList(),
          CustomSubTitle(
            size: size,
            subTitle: 'Favorite',
            isSeeAll: true,
          ),
        ],
      ),
    );
  }
}
