
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/wedgites/custom_bottom_navbar.dart';




import '../cubit_home/homecubit_cubit.dart';



class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<HomecubitCubit>(context),
      child: BlocConsumer<HomecubitCubit, HomecubitState>(
        builder: (context, state) => Scaffold(
          backgroundColor: Colors.white,
         
          
          body: HomecubitCubit.get(context)
              .Screens[HomecubitCubit.get(context).indexBottomNavBar],
          
              
          bottomNavigationBar:  CustomBottomNavBar()
        ),
        listener: (context, state) {},
      ),
    );
  }
}
