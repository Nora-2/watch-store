import 'package:flutter/material.dart';
import 'package:signin_signup/Features/payment/presentation/views/master_card/views/visa_confirm_screen.dart';
import 'package:signin_signup/core/widgets/custom_payment_card.dart';


class MasterCardView extends StatelessWidget {
  const MasterCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Text('Choose Your Payment Card', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        CustomPaymentCard(
          image: 'assets/images/cnum1.png',
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => ConfirmScreen(),)),
        ),
        const SizedBox(height: 20,),
        CustomPaymentCard(
          image: 'assets/images/cnum1.png',
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => ConfirmScreen(),)),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}


