import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomMainButton extends StatelessWidget {
  CustomMainButton({
    super.key,
    required this.size,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    required this.onPressed,
    this.borderRadius = 10,
  });

  final Size size;
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final void Function()? onPressed;
  double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(size.width, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          side: const BorderSide(
            color: Colors.black,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
