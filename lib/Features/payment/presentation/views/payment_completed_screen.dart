import 'package:flutter/material.dart';
import 'package:signin_signup/Features/profile/presentation/views/delivery.dart';
import 'package:signin_signup/core/widgets/custom_main_button.dart';

class PaymentCompletedScreen extends StatelessWidget {
  const PaymentCompletedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,iconTheme: const IconThemeData(color: Colors.black),),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.1),
            Image.asset('assets/images/paied.png'),
            SizedBox(height: size.height * 0.05),
            const Text(
              'Your Payment Completed',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3A3AD3),
              ),
            ),
            const Text(
              'Successfully',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3A3AD3),
              ),
            ),
            SizedBox(height: size.height * 0.09),
            const Text(
              'Thank You',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'For Shopping With at Watch X',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.1),
            CustomMainButton(
                size: size*0.7,
                backgroundColor: Colors.black,
                text: 'Follow Your Order',
                textColor: Colors.white,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Delivery()));
                }
            ),

          ],
        ),
      ),
    );
  }
}
