import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup/wedgites/custom_container_details.dart';
import 'package:signin_signup/wedgites/custom_main_button.dart';

class MasterCardDetailsScreen extends StatelessWidget {
  const MasterCardDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/cnum2.png'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name on Card',
                      style:
                          TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 3,),
                    CustomContainerDetails(size: size,text: 'Mustafa'),
                    const SizedBox(height: 14,),
                    const Text(
                      'Card Number',
                      style:
                      TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 3,),
                    CustomContainerDetails(size: size,text: '5412 5222 4225 1234'),
                    const SizedBox(height: 14,),
                    const Text(
                      'Address',
                      style:
                      TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 3,),
                    CustomContainerDetails(size: size,text: '20 Emad El Din St., DOWNTOWN'),
                    const SizedBox(height: 14,),
                    const Row(
                      children: [
                         Text(
                          'Expiration Date',
                          style:
                          TextStyle(fontWeight: FontWeight.w600),
                        ),
                         SizedBox(width: 70,),
                         Text(
                          'CVV',
                          style:
                          TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomContainerDetails(size: size/2.5,text: '01/25'),
                        CustomContainerDetails(size: size/2.5,text: '345')
                      ],
                    ),
                    const SizedBox(height: 40,),
                    Center(
                      child: CustomMainButton(
                          size: size*0.5,
                          backgroundColor: Colors.black,
                          text: 'Buy Now',
                          textColor: Colors.white,
                          onPressed: (){},
                        borderRadius: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

