import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit_home/homecubit_cubit.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomecubitCubit,HomecubitState>(
      builder:(context, state) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: BottomNavigationBar(
              currentIndex: HomecubitCubit.get(context).indexBottomNavBar,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              unselectedLabelStyle: const TextStyle(color: Colors.grey, fontSize: 10),
              selectedLabelStyle: const TextStyle(color: Colors.black, fontSize: 12),
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/home.png'),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/products_icon.png'),
                  label: 'Products',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/deals_icon.png'),
                  label: 'Deals',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/profile_icon.png'),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/cart_icon.png'),
                  label: 'Cart',
                ),

              ],
              onTap: (value) {
                 HomecubitCubit.get(context).changeIndexBottom(value);

              },
            ),
          ),
        ),
      ), listener: (BuildContext context, HomecubitState state) {  },
    );
  }
}
