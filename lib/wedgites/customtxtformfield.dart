import 'package:flutter/material.dart';



  
class customformfield extends StatelessWidget {

  customformfield({
    required this.hint,
    required this.preicon,
    this.text,
    this.sign,
    this.massege,
    super.key,
  });
  final String hint;
  final Icon preicon;
  final TextInputType? text;
  final String? sign;
  final String? massege;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: preicon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.1),
          ),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.1),
          ),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 225, 121, 243),
            width: MediaQuery.of(context).size.width * 0.008,
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
