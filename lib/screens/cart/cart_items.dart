import 'package:flutter/material.dart';
import 'package:signin_signup/model/watch_Item_model.dart';
import 'package:signin_signup/screens/home/main_home_screen.dart';
import 'package:signin_signup/wedgites/custome_cart_item.dart';

class CartItem extends StatelessWidget {
  CartItem({super.key});

  static List<WatchItem> item = [
    
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
            'Analog wrist watch for men\n With a metallic and gold-tone stainless steel ',
        price: '5640.99'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(fontSize: 20),
        ),
        elevation: 2,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return CutomCartItem(
              item: item[index],
            );
          }),
    );
  }
}
