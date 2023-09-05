import 'package:flutter/material.dart';
import 'package:signin_signup/model/watch_Item_model.dart';

class CustomProductCard extends StatelessWidget {
  Size size;
  WatchItem item;
  CustomProductCard({
    super.key,
    required this.size,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 4,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                blurRadius: 5,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          child: Card(
              elevation: 0,
              borderOnForeground: true,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(item.image,
                        width: 130, height: 130, fit: BoxFit.contain),
                    const SizedBox(height: 10),
                    Text(
                      item.watchName,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3F2305),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item.watchDescription,

                      style: const TextStyle(
                        fontSize: 8,
                        color: Color(0xFF3F2305),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item.price,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3F2305),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        const SizedBox(
          width: 2,
        )
      ],
    );
  }
}
