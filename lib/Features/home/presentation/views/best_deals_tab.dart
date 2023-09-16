import 'package:flutter/material.dart';
import 'package:signin_signup/Features/home/data/models/best_deal_model.dart';
import 'package:signin_signup/core/widgets/custome_best_deal.dart';


class BestDealTab extends StatelessWidget {
  BestDealTab({super.key});

  final List<BestDealItem> bestDealList = [
    BestDealItem(image: 'assets/images/menn.jpg'),
    BestDealItem(image: 'assets/images/men3.jpg'),
    BestDealItem(image: 'assets/images/men2.jpg'),
    BestDealItem(image: 'assets/images/women1.jpg'),
    BestDealItem(image: 'assets/images/menGold.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bestDealList.length,
      itemBuilder: (context, index) {
        return BestDealContainer(
          item: bestDealList[index],
        );
      },
    );
  }
}
