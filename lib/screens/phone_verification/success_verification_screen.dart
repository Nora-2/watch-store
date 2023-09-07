import 'package:flutter/material.dart';
import 'package:signin_signup/homelayout.dart';
import 'package:signin_signup/wedgites/custom_main_button.dart';

class SuccessVerificationScreen extends StatelessWidget {
  const SuccessVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/success_verify.png', width: size.width * 0.5),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Great',
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'You\'re Now One Of Us',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
              width: size.width * 0.6,
              child: CustomMainButton(
                size: size,
                backgroundColor: Colors.black,
                text: 'Back to Home Page',
                textColor: Colors.white,
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeLayout()));
                },
                borderRadius: 30,
              ),
            ),
          const SizedBox(
            height: 30,
          ),
        ],
      )),
    );
  }
}
