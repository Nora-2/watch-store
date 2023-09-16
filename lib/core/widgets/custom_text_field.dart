import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Color? iconColor;
  final IconData? prefixIcon;
  final String? hintText;
  final Function(String)? onSubmitted;
  //final TextEditingController? controller;

  const CustomTextField({
    this.prefixIcon,
    this.iconColor,
    this.hintText,
    this.onSubmitted,
    //this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      //controller: controller,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: iconColor,
          size: 24,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none),
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
      ),
      maxLines: 1,
    );
  }
}