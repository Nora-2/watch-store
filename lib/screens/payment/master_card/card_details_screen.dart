import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/screens/payment/edit_card_screen.dart';
import 'package:signin_signup/screens/payment/payment_completed_screen.dart';
import 'package:signin_signup/screens/payment/payment_cubit.dart';
import 'package:signin_signup/screens/payment/payment_states.dart';
import 'package:signin_signup/wedgites/custom_container_details.dart';
import 'package:signin_signup/wedgites/custom_main_button.dart';

class CardDetailsScreen extends StatefulWidget {
  CardDetailsScreen({Key? key,this.isVisaCard=false}) : super(key: key);
  bool isVisaCard;

  @override
  State<CardDetailsScreen> createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: BlocConsumer<PaymentCubit,PaymentStates>(
          listener: (context, state) {},
      builder:(context, state) =>  Scaffold(
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
                widget.isVisaCard?Image.asset('assets/images/visa_number.png',width: double.infinity,):
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
                      CustomContainerDetails(size: size,text: PaymentCubit.get(context).userData['nameOnCard'] as String),
                      const SizedBox(height: 14,),
                      const Text(
                        'Card Number',
                        style:
                        TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 3,),
                      CustomContainerDetails(size: size,text: PaymentCubit.get(context).userData['cardNumber'] as String),
                      const SizedBox(height: 14,),
                      const Text(
                        'Address',
                        style:
                        TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 3,),
                      CustomContainerDetails(size: size,text: PaymentCubit.get(context).userData['address1'] as String),
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
                          CustomContainerDetails(size: size/2.5,
                            text: PaymentCubit.get(context).userData['expiryDate'] as String,
                          ),
                          CustomContainerDetails(size: size/2.5,
                            text: PaymentCubit.get(context).userData['cvv'] as String,
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const EditCardScreen()));
                            },
                            child: const Text( 'Edit Card Information',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline),)
                        ),
                      ),
                      Center(
                        child: CustomMainButton(
                            size: size*0.5,
                            backgroundColor: Colors.black,
                            text: 'Buy Now',
                            textColor: Colors.white,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentCompletedScreen()));

                            },
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
      )),
    );
  }
}

