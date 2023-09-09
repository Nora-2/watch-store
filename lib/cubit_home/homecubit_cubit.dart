
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/screens/cart/cart_items.dart';

import 'package:signin_signup/screens/deals.dart';
import 'package:signin_signup/screens/home/main_home_screen.dart';
import 'package:signin_signup/screens/product.dart';
import 'package:signin_signup/screens/profile.dart';
import 'package:signin_signup/screens/cart/cart.dart';

part 'homecubit_state.dart';
  
class HomecubitCubit extends Cubit<HomecubitState> {
   
  HomecubitCubit() : super(HomecubitInitial());
    static HomecubitCubit get(context)=>BlocProvider.of(context);
    
  List<Widget> Screens = [
    MainHomeScreen(),
    products(),
    deals(),
    profile(),
    cart()
  ];
  int indexBottomNavBar = 0;
  void changeIndexBottom(int x){
    indexBottomNavBar = x;
    emit(BottomNavBarChanged());
  }
}
