import 'package:flutter/material.dart';
import 'package:signin_signup/model/watch_Item_model.dart';
import 'package:signin_signup/wedgites/custom_product_card.dart';

class CustomProductsList extends StatelessWidget {
  const CustomProductsList({
    super.key,
    required this.size,
    required this.categoryProducts,
  });

  final Size size;
  final List<WatchItem> categoryProducts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.31,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) =>  Row(
          children: [
            CustomProductCard(size: size, item: categoryProducts[index]),
          ],
        ),
        itemCount: categoryProducts.length,
      ),
    );
  }
}
