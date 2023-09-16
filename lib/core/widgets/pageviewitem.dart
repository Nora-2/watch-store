import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:signin_signup/Features/Splash/presentation/views/on_boarding.dart';



Widget pageViewItem(List<PageViewData> PageViewItems, index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Lottie.asset(
              PageViewItems[index].image,
              key: Key('${Random().nextInt(999999999)}'),
              width: 400,
              height: 400,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text(
                PageViewItems[index].title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                PageViewItems[index].statement,
                style: TextStyle(fontSize: 15, color: Colors.black26),
              ),
            ),
          ],
        ),
      ),
    );
