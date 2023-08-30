import 'package:flutter/material.dart';

/*
*
*
*********     Still working on this widget   **********
*
*
*/

class CustomProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productDescription;
  final double price;

  const CustomProductCard({
    required this.imagePath,
    required this.productName,
    required this.productDescription,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image.asset('assets/images/category_01.jpg',
              width: 90, height: 90, fit: BoxFit.cover),
          const SizedBox(height: 10),
          const Text(
            'productName',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'dfgmd gdhfsd dfdhd',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '245',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )

    );
  }
}
