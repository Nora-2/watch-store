import 'package:flutter/material.dart';
import 'package:signin_signup/Features/payment/presentation/manger/payment_cubit.dart';


class CustomEditCardTextInfo extends StatelessWidget {
  const CustomEditCardTextInfo({
    required this.size,
    required this.hintText,
    required this.controller,
    super.key,
  });
  final String hintText;
  final TextEditingController controller;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: const Color(0xff262626),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: PaymentCubit.get(context).userData[hintText] as String,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
