import 'package:flutter/material.dart';
import 'package:signin_signup/screens/payment/master_card/master_card_details_screen.dart';
import 'package:signin_signup/screens/payment/visa/visa_details_screen.dart';
import 'package:signin_signup/wedgites/custom_payment_card.dart';

class VisaCardView extends StatelessWidget {
  const VisaCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomPaymentCard(
          image: 'assets/images/visa_number.png',
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => const VisaDetailsScreen(),)),
        ),
        const SizedBox(height: 20,),
        CustomPaymentCard(
          image: 'assets/images/visa_number.png',
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => const VisaDetailsScreen(),)),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}


