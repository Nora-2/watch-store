import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup/Features/home/presentation/views/category_controller.dart';


class ForYouTab extends StatelessWidget {
  const ForYouTab({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: Get.put(CategoryController()),
        builder: (controller) {
          return controller.currentView;
        },
    );
  }
}
