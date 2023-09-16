import 'package:flutter/material.dart';
import 'package:signin_signup/Features/payment/presentation/views/visa/visa_details_screen.dart';
import 'package:signin_signup/core/widgets/custom_payment_card.dart';


class VisaCardView extends StatelessWidget {
  const VisaCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Text('Choose Your Payment Card', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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


