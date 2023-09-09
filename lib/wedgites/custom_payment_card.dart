import 'package:flutter/material.dart';

class CustomPaymentCard extends StatelessWidget {
  final String image;
  final void Function()? onTap;
  const CustomPaymentCard({
    required this.image,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 1,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(image),
            const Text('Show Details', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
