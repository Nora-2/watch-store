import 'package:flutter/material.dart';
import 'package:signin_signup/core/widgets/custom_text_field.dart';


class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: 42,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              width: 1, color: Colors.black.withOpacity(0.5))),
      child: CustomTextField(
        //controller: searchController,
        onSubmitted: (value) {

        },
        hintText: 'What are you looking for?',
        prefixIcon: Icons.search,
        iconColor: Colors.grey[800],
      ),
    );
  }
}
