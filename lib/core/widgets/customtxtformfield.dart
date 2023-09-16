import 'package:flutter/material.dart';

class customformfield extends StatelessWidget {
  customformfield({
    required this.hint,
    required this.preicon,
    this.text,
    this.sign,
    this.massege,
    this.suffix,
    required this.controller,
    super.key,
  });
  final String hint;
  final Widget preicon;
  final TextInputType? text;
  final String? sign;
  final String? massege;
  final Widget? suffix;
  final TextEditingController?controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      controller:controller ,
      decoration: InputDecoration(
     
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: preicon,
        suffixIcon: suffix,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
borderSide: BorderSide(color: Colors.grey)
          
        ),
       
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
           color: Colors.black,
            
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
           color: Colors.black,
            
          ),
        ),
      ),
      keyboardType: text,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
