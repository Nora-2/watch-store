import 'package:flutter/material.dart';
import 'package:signin_signup/screens/payment/master_card/master_card_details_screen.dart';
import 'package:signin_signup/wedgites/custom_payment_card.dart';

class MasterCardView extends StatelessWidget {
  const MasterCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomPaymentCard(
          image: 'assets/images/cnum1.png',
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => const MasterCardDetailsScreen(),)),
        ),
        const SizedBox(height: 20,),
        CustomPaymentCard(
          image: 'assets/images/cnum1.png',
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => const MasterCardDetailsScreen(),)),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}


