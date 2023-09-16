import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup/Features/categories%20details/presentation/views/classic_view.dart';
import 'package:signin_signup/Features/categories%20details/presentation/views/kids_view.dart';
import 'package:signin_signup/Features/categories%20details/presentation/views/men_view.dart';
import 'package:signin_signup/Features/categories%20details/presentation/views/smart_view.dart';
import 'package:signin_signup/Features/categories%20details/presentation/views/women_view.dart';


class CategoryController extends GetxController{
  int? selectedCategoryIndex;
  late Widget currentView;

  @override
  void onInit() {
    selectedCategoryIndex = 0;
    currentView = const ClassicView(size: Size(411.4, 820.6));
    super.onInit();
  }


  getCategoryView(Size size, String categoryName) {
    if(categoryName == 'Classic'){
      currentView = ClassicView(size: size);
    }
    else if(categoryName == 'Men'){
      currentView = MenView(size: size);
    }
    else if(categoryName == 'Women'){
      currentView = WomenView(size: size);
    }
    else if(categoryName == 'Smart'){
      currentView = SmartView(size: size);
    }
    else if(categoryName == 'Kids'){
      currentView = KidsView(size: size);
    }
    update();
  }

}