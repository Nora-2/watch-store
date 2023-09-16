import 'package:flutter/material.dart';
import 'package:signin_signup/homelayout.dart';
import 'package:signin_signup/wedgites/custom_main_button.dart';

class Delivery extends StatelessWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height*0.1),
            Image.asset('assets/images/delivery.jpg'),
            SizedBox(height: size.height*0.05),
            const Text(
              'Your Order is on the Way!',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF3A3AD3),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height*0.05),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Your order will be delivered soon as much as possible',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: size.height*0.12),
            CustomMainButton(
                size: size*0.7,
                backgroundColor: Colors.black,
                text: 'Back to Home',
                textColor: Colors.white,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeLayout()));
                }
            ),
          ],
        ),
      ),
    );
  }
}
