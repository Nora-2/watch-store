import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/Features/cart/presentation/views/cart.dart';

import 'package:signin_signup/Features/home/presentation/views/main_home_screen.dart';
import 'package:signin_signup/Features/profile/presentation/views/profiledetailes.dart';

import 'package:signin_signup/core/components/deals.dart';
import 'package:signin_signup/core/components/product.dart';

part 'homecubit_state.dart';

class HomecubitCubit extends Cubit<HomecubitState> {
  HomecubitCubit() : super(HomecubitInitial());
  static HomecubitCubit get(context) => BlocProvider.of(context);

  List<Widget> Screens = [
    MainHomeScreen(),
    products(),
    deals(),
    profiledetailes(),
    Cart()
  ];
  int indexBottomNavBar = 0;
  void changeIndexBottom(int x) {
    indexBottomNavBar = x;
    emit(BottomNavBarChanged());
  }
}
