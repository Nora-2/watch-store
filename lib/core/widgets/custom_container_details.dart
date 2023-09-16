import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomContainerDetails extends StatelessWidget {
  CustomContainerDetails({
    super.key,
    required this.size,
    required this.text,
    this.textColor = Colors.white,
  });

  final Size size;
  final String text;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF262626),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
