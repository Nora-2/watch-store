import 'package:flutter/material.dart';
import 'package:signin_signup/constants/constants.dart';
import 'package:signin_signup/model/watch_Item_model.dart';
import 'package:signin_signup/screens/cart/cart_items.dart';
import 'package:signin_signup/screens/home/category_view/classic_view.dart';
import 'package:signin_signup/screens/home/category_view/kids_view.dart';
import 'package:signin_signup/screens/signup.dart';
import 'package:signin_signup/wedgites/custom_products_list.dart';

class cart extends StatelessWidget {
  cart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CartItem.item == null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/login.jpg'),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      const Text(
                        'Ohh . . . ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const Text('It\’s Look Like That You\’re Not Signed In',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center),
                      const Text(
                          'You need An Account to Complete Your Shopping',
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignUp.id);
                        },
                        child: Text(
                          'Create An Account',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 50)),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Already Got An Account ?',
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          )),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      children: [
                        Image.asset('assets/images/cart.png'),
                        const Text(
                          'Your Shopping Cart is Empty',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        const Text('It’s Time For Shopping !',
                            style: TextStyle(fontSize: 15)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, SignUp.id);
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(horizontal: 50)),
                            ),
                            child: const Text(
                              'Go For Shopping',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Maybe You Like ',
                ),
                Icon(Icons.arrow_forward_ios),
                Spacer(
                  flex: 1,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See All',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          CustomProductsList(
            size: Size(screenHeight, screenWidth),
            categoryProducts: [
              WatchItem(
                image: '$imagePath/kids_03.png',
                watchName: 'Children\'s watch...',
                watchDescription:
                    'A wrist watch for children\nin the form of a cartoon with anal...',
                price: '640.99 L.E',
              ),
              WatchItem(
                image: '$imagePath/kids_04.png',
                watchName: 'Children\'s watch...',
                watchDescription:
                    'A wrist watch for children\nin the form of a cartoon with anal...',
                price: '640.99 L.E',
              ),
              WatchItem(
                image: '$imagePath/kids_03.png',
                watchName: 'Children\'s watch...',
                watchDescription:
                    'A wrist watch for children\nin the form of a cartoon with anal...',
                price: '640.99 L.E',
              ),
            ],
          )
        ],
      ),
    );
  }
}
