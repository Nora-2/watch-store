import 'package:flutter/material.dart';
import 'package:signin_signup/Features/cart/presentation/views/cart_items.dart';
import 'package:signin_signup/Features/home/data/models/watch_Item_model.dart';
import 'package:signin_signup/Features/payment/presentation/views/payment_options_screen.dart';
import 'package:signin_signup/Features/profile/presentation/views/signup.dart';
import 'package:signin_signup/constants/constants.dart';
import 'package:signin_signup/core/components/homelayout.dart';


import 'package:signin_signup/core/widgets/custom_products_list.dart';


class Cart extends StatefulWidget {
  const Cart({
    super.key,
  });

  @override
  State<Cart> createState() => _cartState();
  static String id = 'Cart';
}

class _cartState extends State<Cart> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      show(context);
    });
  }

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
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),

                child: CartItem.item.length == 0
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
                          const Text(
                              'It\’s Look Like That You\’re Not Signed In',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center),
                          const Text(
                              'You need An Account to Complete Your Shopping',
                              style: TextStyle(fontSize: 10),
                              textAlign: TextAlign.center),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, SignUp.id);
                              },
                              child: const Text(
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
                                  Navigator.pushNamed(context, HomeLayout.id);
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          horizontal: 50)),
                                ),
                                child: const Text(
                                  'Go For Shopping',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
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
                    const Text(
                      'Maybe You Like ',
                    ),
                    const Icon(Icons.arrow_forward_ios),
                    const Spacer(
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
                size: Size(screenWidth, screenHeight),
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
              ),
            ],
          ),
        ],
      ),
    );
  }

  void show(BuildContext context) {
    showModalBottomSheet<void>(
      isDismissible: true,
      isScrollControlled: true,
      enableDrag: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Divider(
                  color: Color(0xff262626),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('Price'),
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, PaymentOptionsScreen.id);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 35)),
                        ),
                        child: const Text(
                          'Checkout',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
