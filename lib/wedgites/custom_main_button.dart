import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    required this.size,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
  });

  final Size size;
  final Color backgroundColor;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(size.width, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
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
