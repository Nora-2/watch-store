import 'package:flutter/material.dart';
import 'package:signin_signup/Features/home/data/models/best_deal_model.dart';


class BestDealContainer extends StatelessWidget {
  const BestDealContainer({super.key, required this.item});
  final BestDealItem item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                item.image,
                fit: BoxFit.fill,
                height: 300,
                width: 420,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:16.0,bottom: 16.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.black), // <-- Radius
                  child: const Text(
                    'Show Deal',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
