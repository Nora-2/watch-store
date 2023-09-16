import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:signin_signup/Features/home/data/models/watch_Item_model.dart';


class CutomCartItem extends StatelessWidget {
  const CutomCartItem({
    super.key,
    required this.item,
  });

  final WatchItem item;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(right: 10),
      height: screenHeight * 0.2,
      width: screenWidth * 3,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            item.image,
            width: 100,
            height: 100,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.watchName,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  item.watchDescription,
                  style:
                      const TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Container(
                      width: 80,
                      child: Text(
                        item.price,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.3,
                    ),
                    ////quantity Button
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 20,
                              )),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.trashAlt,
                        size: 20,
                        color: Colors.red,
                      ),
                      label: const Text(
                        'Remove Product',
                        style: TextStyle(color: Colors.red, fontSize: 10),
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero),
                        visualDensity:
                            const VisualDensity(horizontal: -4, vertical: -4),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_border,
                        size: 20,
                        color: Colors.black,
                      ),
                      label: const Text(
                        'Save For Later',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ]),
        ],
      ),
    );
  }
}
