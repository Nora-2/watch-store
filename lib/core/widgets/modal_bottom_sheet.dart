import 'package:flutter/material.dart';
import 'package:signin_signup/Features/payment/presentation/views/payment_options_screen.dart';

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