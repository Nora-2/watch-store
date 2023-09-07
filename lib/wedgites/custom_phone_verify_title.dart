import 'package:flutter/material.dart';

class CustomPhoneVerifyTitle extends StatelessWidget {
  const CustomPhoneVerifyTitle({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:12),
      width: size.width * 0.7,
      height: size.height * 0.065,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: const Text(
        'Phone Number Verify',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
