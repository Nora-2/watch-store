import 'package:flutter/material.dart';
import 'package:signin_signup/model/most_wanted_watch_Item.dart';
import 'package:signin_signup/wedgites/custom_container_product.dart';

class MostWantedScreen extends StatelessWidget {
  MostWantedScreen({super.key});
  final List<WatchItem> mostItemsList = [
    WatchItem(
        image: 'assets/images/men_03.png',
        watchName: 'Men\'s analog watch. . .',
        watchDescription:
            'Men\'s wrist watch, analog \n, with a black leather boat strap',
        price: '44540.99'),
    WatchItem(
        image: 'assets/images/classic_01.png',
        watchName: 'Classic analog watch. . .',
        watchDescription:
            'Analog wrist watch for men\n With a metallic and gold-tone stainless steel hands',
        price: '5640.99'),
    WatchItem(
        image: 'assets/images/women_03.png',
        watchName: 'Women\'s analog  watch. . .',
        watchDescription:
            'Analog wrist watch for women\n With gold-tone hands and black leather',
        price: '7640.99'),

        WatchItem(image: 'assets/images/smart_02.png', watchName: 'Smart watch. . .', watchDescription: 'Black smart watch', price: '2075.99'),
        WatchItem(image: 'assets/images/smart_03.png', watchName: 'Smart watch. . .', watchDescription: 'Black smart watch', price: '2075.99'),
        WatchItem(image: 'assets/images/kids_01.png', watchName: 'Kids bear watch. . .', watchDescription: 'Kids watch with cute bear draw', price: '589.99'),
        WatchItem(image: 'assets/images/kids_02.png', watchName: 'Kids digital watch. . .', watchDescription: 'Digital watch for your kid', price: '3000.99'),
        WatchItem(image: 'assets/images/women_01.png', watchName: 'Women\'s watch. . .', watchDescription: 'Elegant silver watch', price: '8502.99'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mostItemsList.length,
      itemBuilder: (context, index) {
        return MostWantedContainer(
          item: mostItemsList[index],
        );
      },
    );
  }
}
